Level4 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level4:init(controler)

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
    
    self.player = Player(self.map, FACE_LEFT, self.world)
    self.control = controler
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 15
    self.endGame = false
    self.index = 1

    self.functions = {
        [F0] = {}
    }

    self.f0NextInstruction = 1
    self.start = false

    self:setUpInstructions()
end

function Level4:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, self.endGame)

    if self.player.collider:enter('Door') then
        self.endGame = true
        self.player.isMoving = false
        self.functions[F0] = {}
    end

    if self.player.collider:enter('Solid') then
        self.player.speed = 0
        self.player.isMoving = false
        self.functions[F0] = {}
    end
end

function Level4:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Movement())
    end
end

function Level4:executeInstruction(dt)
    if self.start and #self.functions[F0] > 0 then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        if nextMovement.movement == F0 then
            self.f0NextInstruction = 1
        elseif nextMovement.condition ~= nil then
            if self.player:findColliders(nextMovement.condition) then
                self.player:move(nextMovement.movement, dt)
            end
            self.f0NextInstruction = self.f0NextInstruction + 1
        else
            self.player:move(nextMovement.movement, dt)
            self.f0NextInstruction = self.f0NextInstruction + 1
        end
        nextMovement = self.functions[F0][self.f0NextInstruction]
        love.timer.sleep(0.1)
    end
end

function Level4:drawCommands()
    self.control:render(self.text, self.numberOfCommands)
end

function Level4:insert(command)
    if self.index <= level.numberOfCommands then
        if self.index > 1 then
            if inTable(self.functions[F0][self.index].conditions, command) then
                self.functions[F0][self.index].condition = command
                return
            else
                if self.functions[F0][self.index - 1].movement == nil then
                    self.functions[F0][self.index - 1].movement = command
                else
                    self.functions[F0][self.index].movement = command
                end
            end
        else
            if inTable(self.functions[F0][self.index].conditions, command) then
                self.functions[F0][self.index].condition = command
            else
                self.functions[F0][self.index].movement = command
            end
        end
    end
    self.index = self.index + 1
end

function Level4:reset()
    self.player:resetPosition()
    self.functions[F0] = {}
    self.f0NextInstruction = 1
    self.endGame = false
end

function Level4:run()
    self.start = true
end

function Level4:render()
    self.map:draw()
    self:drawCommands()
    self.door:draw()
    self.fruit:draw()
    if self.endGame == false then
        self.player:draw()
    end
    -- self.world:draw()
end
