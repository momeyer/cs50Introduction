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

    self.player = Player(self.map, FACE_UP, self.world)
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

    self.yellow = false


    self:setUpInstructions()
end

function Level3:update(dt)
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

    if self.player.collider:enter('YellowTile') then
        self.yellow = true
    else
        self.yellow = false
    end
end

function Level3:setUpInstructions()
    for i = 1, self.numberOfCommands do
        table.insert(self.functions[F0], Movement())
    end
end

function Level3:executeInstruction(dt)
    if self.start and #self.functions[F0] > 0 then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        if nextMovement.movement == F0 then
            self.f0NextInstruction = 1
        elseif nextMovement.condition == CONDITIONAL_GREY then
            if self.player:findColliders(CONDITIONAL_GREY) then
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

function Level3:drawCommands()
    self.control:render(self.text, self.numberOfCommands)
end

function Level3:insert(command)
    --print('index: ' .. self.index)
    if self.index <= level.numberOfCommands then
        if self.index > 1 then
            --print('if')
            if command == CONDITIONAL_GREY then
                --print('if')
                --print('command = CONDITIONAL GREY')
                self.functions[F0][self.index].condition = CONDITIONAL_GREY
                return
            elseif self.functions[F0][self.index - 1].movement == nil then
                --print('elseif')
                --print('command ~= CONDITIONAL GREY, and [index - 1].movement == nil')
                self.functions[F0][self.index - 1].movement = command
                --print('---- ' .. ' movement: ' .. self.functions[F0][self.index - 1].movement .. ' condition: ' .. self.functions[F0][self.index - 1].condition)
                return
            else
                --print('else')
                --print('command ~= conditional grey and index - 1 not conditional grey so ad at cur location')
                self.functions[F0][self.index].movement = command
                --print('---- ' .. ' movement: ' .. self.functions[F0][self.index].movement)
            end
        else
            --print('else')
            if command == CONDITIONAL_GREY then
                --print('command = CONDITIONAL GREY')
                self.functions[F0][self.index].condition = command
            else
                --print('else')
                self.functions[F0][self.index].movement = command
                --print('---- ' .. ' movement: ' .. self.functions[F0][self.index].movement)
            end
        end
    end
    self.index = self.index + 1
end

function Level3:reset()
    self.player:resetPosition()
    self.functions[F0] = {}
    self.f0NextInstruction = 1
    self.endGame = false
end

function Level3:run()
    self.start = true
end

function Level3:render()
    self.map:draw()
    self:drawCommands()
    self.door:draw()
    self.player:draw()
    self.world:draw()
end
