Level = Class{}

local windfield = require("windfield")
    
require "Util"

function Level:init(mapToRender)

    self.map = sti(mapToRender)
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.game = Game()
    self.mapProperties = self.map.layers.info.properties

    self.classes = Classes(self.map, self.world, self.game)
    -- try to break into another class
   
    -- up to here

    self.text = self.mapProperties.title
    self.numberOfCommands = self.mapProperties.numCommands
    self.index = 1

    self.functions = {
        [F0] = {}
    }

   
    self.f0NextInstruction = 1
    
    self.buttons = Buttons(self)
    self:setUpInstructions()
    self.answer = Answer(self.mapProperties.size, self.map)
end

function Level:update(dt)
    self.map:update(dt)
    self.classes.player:update(dt)
    self:executeInstruction(dt)
    self.classes.door:update(dt, self.game.stages.endGame)
end

function Level:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level:executeInstruction(dt)
    if self.game.stages.start and not self.game.stages.fail then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        if nextMovement == nil then
            self.game.stages.fail = true
        elseif nextMovement.action == F0 then
            self.f0NextInstruction = 1
        elseif nextMovement.condition ~= nil then
            if self.classes.player:findColliders(nextMovement.condition) then
                self.classes.player:move(nextMovement.action, dt)
            end
            self.f0NextInstruction = self.f0NextInstruction + 1
        else
            self.classes.player:move(nextMovement.action, dt)
            self.f0NextInstruction = self.f0NextInstruction + 1
        end
        nextMovement = self.functions[F0][self.f0NextInstruction]
        love.timer.sleep(0.1)
    end
end

function Level:drawCommands()
    self.buttons:render(self.text, self.numberOfCommands)
end

function Level:insert(command)
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


function Level:render()
    self.map:draw()
    self:drawCommands()
    self.classes.door:draw()

    self.answer:draw()
    if self.game.stages.endGame == false then
        self.classes.player:draw()
    end
    if self.mapProperties.doorType == PARK then
        self.classes.player:draw()
    end
    -- self.world:draw()
end
