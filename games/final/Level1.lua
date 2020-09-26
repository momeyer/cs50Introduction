Level1 = Class{}

function Level1:init(controler)
    self.map = sti("maps/one.lua")

    self.player = Player(self.map, FACE_UP, 6)
    self.control = controler
    self.title = title
    self.small = small
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 3
    self.doorX = 96
    self.doorY = 73
    
    self.doorOpen = love.graphics.newImage('graphics/door1.png')

    self.functions = {
        [F0] = {}
    }
    self.f0NextInstruction = 1
    self.start = false
end

function Level1:update(dt)
    self.map:update(dt)
    self:executeInstruction()
end

function Level1:executeInstruction()
    if self.start then
        local nextMovement = self.functions[F0][self.f0NextInstruction]
        print(nextMovement)
        
        if nextMovement == F0 then
            self.f0NextInstruction = 1
        else
            self.player:move(nextMovement)
            self.f0NextInstruction = self.f0NextInstruction + 1
        end
        print(self.f0NextInstruction)
        nextMovement = self.functions[F0][self.f0NextInstruction]
        love.timer.sleep(0.1)
        if self.player.player.y <= self.doorY or nextMovement == nil then
            self.start = false
        end
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
        print("--------- " .. command)
        print("size ----- " .. #self.functions[F0])
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
end