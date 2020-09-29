Level1 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level1:init(controler)

    self.map = sti("maps/one.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.world:addCollisionClass('Door')
    
    self.layer = 6
    self.player = Player(self.map, FACE_UP, self.layer, self.world)
    self.control = controler
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 6
    self.endGame = false
    
    self.functions = {
        [F0] = {}
    }
    
    self.f0NextInstruction = 1
    self.start = false

    self.door = Door(self.map, self.world)
end

function Level1:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)

    if self.player.collider:enter('Door') then
        self.endGame = true
        self.player.isMoving = false
        self.functions[F0] = {}
    end

    self.door:update(dt, self.endGame)
end

function Level1:executeInstruction(dt)
    if self.start then
        local nextMovement = self.functions[F0][self.f0NextInstruction]     
        if nextMovement == F0 then
            self.f0NextInstruction = 1
        else
            self.player:move(nextMovement, dt)
            self.f0NextInstruction = self.f0NextInstruction + 1
        end
        nextMovement = self.functions[F0][self.f0NextInstruction]
        love.timer.sleep(0.1)
    end
end

function Level1:drawSelectedButtons(second, third)
    love.graphics.draw(self.control.buttons[F0], 310, 160) --answer
    love.graphics.draw(self.control.buttons[second], 325, 161) --answer
    love.graphics.draw(self.control.buttons[third], 339, 161) --answer
end

function Level1:drawCommands()
    self.control:render(self.text, self.numberOfCommands)
    --self:drawSelectedButtons('walk', F0)
end

function Level1:insert(command)
    if #level.functions[F0] < level.numberOfCommands - 1 then
        table.insert(self.functions[F0], command)
    end
end

function Level1:reset()
    self.player:resetPosition()
    self.functions[F0] = {}
    self.f0NextInstruction = 1
    self.endGame = false
end

function Level1:run()
    self.start = true
end

function Level1:render()
    self.map:draw()
    self:drawCommands()

    if self.endGame == false then
        self.player:draw()
        self.door:draw()
    end

    -- self.world:draw()
end