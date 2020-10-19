Level = Class{}

local windfield = require("windfield")
    
require "Util"

function Level:init(mapToRender)
    self.map = sti(mapToRender)
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.mapProperties = self.map.layers.info.properties
    self.game = Game(self.mapProperties)
    self.tiles = Tiles(self.map, self.world, self.game)

    self.text = self.mapProperties.title
    self.numberOfCommands = self.mapProperties.numCommands
    self.index = 1

    self.functions = {
        [F0] = {},
        -- [F1] = {},
    }

    self.nextInstruction = {F0, 1}
    
    self.buttons = Buttons(self)
    self:setUpInstructions()
    self.answer = Answer(self.mapProperties.size, self.map)
end

function Level:update(dt)
    self.map:update(dt)
    self.tiles.player:update(dt)
    self:executeInstruction(dt)
    
    if self.mapProperties.door then
        self.tiles.door:update(dt, self.game.stages.endGame)
    end
    if self.game.stages.endGame then
        self.functions[F0] = {}
    end
end

function Level:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level:executeInstruction(dt)
    if self.game.stages.start and not self.game.stages.fail then
        local nextMovement = self.functions[self.nextInstruction[1]][self.nextInstruction[2]]
        if nextMovement == nil then
            self.game.stages.fail = true
        elseif nextMovement.action == F0 then
            self.nextInstruction[2] = 1
        elseif nextMovement.condition ~= nil then
            if self.tiles.player:findColliders(nextMovement.condition) then
                self.tiles.player:move(nextMovement.action, dt)
            end
            self.nextInstruction[2] = self.nextInstruction[2] + 1
        else
            self.tiles.player:move(nextMovement.action, dt)
            self.nextInstruction[2] = self.nextInstruction[2] + 1
        end
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
            self.answer:setConditionImage(command, self.index)
        else
            self.functions[F0][self.index].action = command
            self.answer:setActionImage(command, self.index)
            self.index = self.index + 1
        end
    end
end


function Level:render()
    self.map:draw()
    self:drawCommands()

    self.answer:draw()
    if self.game.stages.endGame == false then
        self.tiles.player:draw()
    end
    if not self.mapProperties.door then
        self.tiles.player:draw()
    end
    -- self.world:draw()
end
