Level3 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level3:init(controler)

    self.map = sti("maps/three.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)

    self.door = Door(self.map, self.world, PARK)
    self.grass = Grass(self.map, self.world)
    self.yellowTile = YellowTile(self.map, self.world)
    self.greyTile = GreyTile(self.map, self.world)

    self.player = Player(self.map, FACE_UP, self.world, self)
    self.text = 'Help Tony to get home'
    self.numberOfCommands = self.map.layers.info.properties.numCommands
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
    
    self.answer = Answer(self.map.layers.answer.properties.size, self.map)
end

function Level3:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, gameStages.endGame)
end

function Level3:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level3:executeInstruction(dt)
    if gameStages.start and not gameStages.fail then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        if nextMovement == nil then
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


function Level3:insert(command)
    if self.index <= level.numberOfCommands then
        if inTable(self.functions[F0][self.index].conditions, command) then
            self.functions[F0][self.index].condition = command
            self.answer:setImage(command)
        else
            self.functions[F0][self.index].action = command
            self.answer:setImage(command)
            self.index = self.index + 1
        end
    end
end

function Level3:render()
    self.map:draw()
    self:drawCommands()
    self.door:draw()
    self.answer:draw()
    self.player:draw()
    -- self.world:draw()
end
