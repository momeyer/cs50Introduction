Level1 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level1:init()

    self.map = sti("maps/one.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.door = Door(self.map, self.world, HOUSE)
    self.grass = Grass(self.map, self.world, 3)

    self.player = Player(self.map, FACE_UP, self.world)

    self.text = 'Help Tony to get home'
    self.numberOfCommands = 2
    self.index = 1
    
    self.functions = {
        [F0] = {}
    }
    self.f0NextInstruction = 1

    self.buttons = Buttons(self)
    self:setUpInstructions()

    gameStages.start = false
    gameStages.endGame = false
    gameStages.fail = false

    self.answerSpaces = {}
    self:setUpAnswers()
end

function Level1:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, gameStages.endGame)

    if self.player.collider:enter('Grass') then
        self.player.speed = 0
        self.player.isMoving = false
        gameStages.fail = true
    end

end

function Level1:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level1:setUpAnswers()
    for i = 1, self.numberOfCommands do
        table.insert(self.answerSpaces, Answer( (i * 20) + 300 ))
    end
end

function Level1:executeInstruction(dt)
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

function Level1:drawCommands()
    self.buttons:render()
end

function Level1:drawAnswer()
    love.graphics.setFont(FONT_LARGE)
    love.graphics.printf(self.text, 90, 70, VIRTUAL_WIDTH, 'center')
    for i = 1, #self.answerSpaces do
        self.answerSpaces[i]:render()
    end
end


function Level1:insert(command)
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

function Level1:render()
    self.map:draw()
    self:drawCommands()
    self:drawAnswer()
    self.door:draw()

    if not gameStages.endGame then
        self.player:draw()
    end
    -- self.world:draw()
end