Level3 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level3:init(controler)

    self.map = sti("maps/three.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.world:addCollisionClass('Solid')

    self.door = Door(self.map, self.world, PARK)
    self.grass = Grass(self.map, self.world, 18)
    self.yellowTile = YellowTile(self.map, self.world, 2)
    self.greyTile = GreyTile(self.map, self.world, 21)

    self.player = Player(self.map, FACE_UP, self.world, self)
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 5
    self.index = 1

    self.functions = {
        [F0] = {}
    }

    self.f0NextInstruction = 1

    self.buttons = Buttons(self)
    self:setUpInstructions()


    self.answerSpaces = {}
    self:setUpAnswers()
end

function Level3:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, gameStages.endGame)

    if gameStages.endGame then
        self.functions[F0] = {}
    end

    if self.player.collider:enter('Grass') then
        self.player.speed = 0
        self.player.isMoving = false
        self.functions[F0] = {}
        gameStages.fail = true
    end

end

function Level3:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level3:executeInstruction(dt)
    if gameStages.start then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        if nextMovement.action == nil then
            gameStages.fail = true
        elseif nextMovement.action == F0 then
            self.f0NextInstruction = 1
        elseif nextMovement.condition ~= nil then
            if self.player:findColliders(nextMovement.condition) then
                self.player:move(nextMovement.action, dt)
            end
            self.f0NextInstruction = self.f0NextInstruction + 1
        else
            self.player:move(nextMovement.action, dt)
            self.f0NextInstruction = self.f0NextInstruction + 1
        end
        nextMovement = self.functions[F0][self.f0NextInstruction]
        love.timer.sleep(0.1)
    end
end

function Level3:drawCommands()
    self.buttons:render(self.text, self.numberOfCommands)
end


function Level3:setUpAnswers()
    for i = 1, self.numberOfCommands do
        table.insert(self.answerSpaces, Answer( (i * 20) + 300 ))
    end
end

function Level3:drawAnswer()
    love.graphics.setFont(FONT_LARGE)
    love.graphics.printf(self.text, 90, 70, VIRTUAL_WIDTH, 'center')

    for i = 1, #self.answerSpaces do
        self.answerSpaces[i]:render()
    end

end

function Level3:insert(command)
    if self.index <= level.numberOfCommands then
        if inTable(self.functions[F0][self.index].conditions, command) then
            self.functions[F0][self.index].condition = command
            self.answerSpaces[self.index].condition = images[command]
        else
            self.functions[F0][self.index].action = command
            self.answerSpaces[self.index].action = images[command]
            self.index = self.index + 1
        end
    end
end

function Level3:render()
    self.map:draw()
    self:drawCommands()
    self.door:draw()
    self:drawAnswer()
    self.player:draw()
    -- self.world:draw()
end
