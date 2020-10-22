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

    self.funcIndex = 1
    self.funcIndex1 = 1
    self.answerIndex = 1

    self.functions = {
        [F0] = {},
        [F1] = {},
    }

    self.nextInstruction = {F0, 1}
    
    self.buttons = Buttons(self)
    self:setUpInstructions()
    self.answer = Answer(self.mapProperties, self.map)
end

function Level:reset()
    self.funcIndex = 1
    self.funcIndex1 = 1
    self.answerIndex = 1

    self.functions = {
        [F0] = {},
        [F1] = {},
    }

    self.nextInstruction = {F0, 1}
    
    self.buttons = Buttons(self)
    self:setUpInstructions()
    self.answer = Answer(self.mapProperties, self.map)
end

function Level:update(dt)
    self.map:update(dt)
    self.tiles.player:update(dt)
    self:executeInstruction(dt)
    
    if self.mapProperties.door then
        self.tiles.door:update(dt, self.game.stages.endGame)
    end
end


function Level:setUpInstructions()
    local funcs = {F0, F1}
    for i = 1, self.mapProperties.numFunc do
        for j = 1, self.mapProperties[funcs[i]] do
            table.insert(self.functions[funcs[i]], Actions())
        end
    end
end

function Level:executeInstruction(dt)
    if self.game.stages.start and not self.game.stages.fail and not self.game.stages.endGame then
        local nextMovement = self.functions[self.nextInstruction[1]][self.nextInstruction[2]]
        if nextMovement == nil or nextMovement.action == nil then
            self.game.stages.fail = true
        elseif nextMovement.action == F0 or nextMovement.action == F1 then
            if nextMovement.condition == nil then
                self.nextInstruction = {nextMovement.action, 1}
            elseif self.tiles.player:findColliders(nextMovement.condition) then
                self.nextInstruction = {nextMovement.action, 1}
            else
                self.nextInstruction[2] = self.nextInstruction[2] + 1
            end
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
    self.buttons:render()
end

function Level:insert(command)
    if self.funcIndex <= self.mapProperties[F0] then
        if inTable(self.functions[F0][self.funcIndex].conditions, command) then
            self.functions[F0][self.funcIndex].condition = command
            self.answer:setConditionImage(command, self.answerIndex)
        else
            self.functions[F0][self.funcIndex].action = command
            self.answer:setActionImage(command, self.answerIndex)

            self.funcIndex = self.funcIndex + 1
            self.answerIndex = self.answerIndex + 1
        end
    else
        
        if self.funcIndex1 <= self.mapProperties[F1] then
            if inTable(self.functions[F1][self.funcIndex1].conditions, command) then
                self.functions[F1][self.funcIndex1].condition = command
                self.answer:setConditionImage(command, self.answerIndex)
            else
                self.functions[F1][self.funcIndex1].action = command
                self.answer:setActionImage(command, self.answerIndex)
                self.funcIndex1 = self.funcIndex1 + 1
                self.answerIndex = self.answerIndex + 1
            end
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
    --self.world:draw()
end
