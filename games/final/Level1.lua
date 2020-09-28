Level1 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level1:init(controler)

    self.map = sti("maps/one.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)

    self.layer = 6
    self.player = Player(self.map, FACE_UP, self.layer, self.world)
    self.control = controler
    self.title = title
    self.small = small
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 6
    
    self.door = getMapObject(self.map, "end")
    
    self.doorOpen = love.graphics.newImage('graphics/door1.png')

    self.functions = {
        [F0] = {}
    }
    self.f0NextInstruction = 1
    self.start = false
    
    self.world:addCollisionClass('Door')
    collider = self.world:newRectangleCollider(self.door.x - 50, self.door.y - 34, 150, 50)
    collider:setCollisionClass('Door')
    collider:setType('static')

end

function Level1:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
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
        -- if self.player.y <= self.door.y or nextMovement == nil then
        --     self.start = false
        -- end
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
end

function Level1:run()
    self.start = true
end

function Level1:render()
    self.map:draw()
    self:drawCommands()
    self.player:draw()
    self.world:draw()
end