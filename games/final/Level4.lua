Level4 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level4:init()

    self.map = sti("maps/four.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.world:addCollisionClass('Solid')

    self.door = Door(self.map, self.world, SCHOOL)
    self.grass = Grass(self.map, self.world, 4)
    self.yellowTile = YellowTile(self.map, self.world, 1)
    self.blueTile = BlueTile(self.map, self.world, 3)
    self.greyTile = GreyTile(self.map, self.world, 0)
    self.fruit = Collectables(self.map, self.world, 2)
    
    self.player = Player(self.map, FACE_LEFT, self.world, self)
    self.buttons = Buttons()
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 15
    self.index = 1

    self.functions = {
        [F0] = {}
    }

    self.f0NextInstruction = 1

    self:setUpInstructions()
end

function Level4:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, gameStages.endGame)
    self.buttons:update(dt, self.index, self.functions)
    if self.player.collider:enter('Solid') then
        self.player.speed = 0
        self.player.isMoving = false
        self.functions[F0] = {}
    end

    if gameStages.endGame then
        gameStages.start = false
    end
end

function Level4:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Actions())
    end
end

function Level4:executeInstruction(dt)
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

function Level4:drawCommands()
    self.buttons:render(self.text, self.numberOfCommands)
end

function Level4:insert(command)
    if self.index <= level.numberOfCommands then
        if inTable(self.functions[F0][self.index].conditions, command) then
            self.functions[F0][self.index].condition = command
        else
            self.functions[F0][self.index].action = command
            self.index = self.index + 1
        end
    end
end

function Level4:render()
    self.map:draw()
    self:drawCommands()
    self.door:draw()
    if gameStages.endGame == false then
        self.player:draw()
    end
    -- self.world:draw()
end
