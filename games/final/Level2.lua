Level2 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level2:init(controler)
    self.map = sti("maps/two.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.world:addCollisionClass('Solid')
    self.door = Door(self.map, self.world, SCHOOL)
    self.grass = Grass(self.map, self.world, 18)
 
    self.player = Player(self.map, FACE_RIGHT, self.world)
    self.control = controler
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 15
    self.index = 1
    
    self.functions = {
        [F0] = {}
    }
    
    self.f0NextInstruction = 1

    self:setUpInstructions()
end

function Level2:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, gameStages.endGame)

    if self.player.collider:enter('Solid') then
        self.player.speed = 0
        self.player.isMoving = false
    end
end


function Level2:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level2:executeInstruction(dt)
    if gameStages.start and #self.functions[F0] > 0 then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        if nextMovement.action == F0 then
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

function Level2:drawCommands()
    self.control:render(self.text, self.numberOfCommands)
end

function Level2:insert(command)
    if self.index <= level.numberOfCommands then
        if inTable(self.functions[F0][self.index].conditions, command) then
            self.functions[F0][self.index].condition = command
        else
            self.functions[F0][self.index].action = command
            self.index = self.index + 1
        end
    end
end

function Level2:render()
    self.map:draw()
    self:drawCommands()
    self.door:draw()
    if not gameStages.endGame then
        self.player:draw()
    end
    self.world:draw()
end
