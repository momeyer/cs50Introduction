Level1 = Class{}

function Level1:init(controler)
    self.map = sti("maps/one.lua")

    self.player = Player(self.map, 'up', 6)
    self.control = controler
    self.title = title
    self.small = small
    self.text = 'Help Tony to get home'
    self.answerSize = 3
    self.doorX = 96
    self.doorY = 73
    
    self.doorOpen = love.graphics.newImage('graphics/door1.png')
    self.intructions = {'up', 'left', 'up', 'up'}
end

function Level1:update(dt)
    self.map:update(dt)
end

function Level1:drawSelectedButtons(second, third)
    love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
    love.graphics.draw(self.control.buttons[second], 325, 161) --answer
    love.graphics.draw(self.control.buttons[third], 339, 161) --answer
end

function Level1:drawCommands()
    self.control:render(self.text, self.answerSize)
    self:drawSelectedButtons('up', 'f0')
end

function Level1:run()
    if self.player.player.y >= self.doorY then
        if self.intructions[1] == 'up' then
            self.player:moveUp()
        elseif self.intructions[1] == 'left' then
            self.player:moveLeft()
        else
            self.player:stop()
        end
    else
        self.player.sprite = self.doorOpen
    end
end

function Level1:render()
    self.map:draw()
    self:drawCommands()
    self.player:draw()
end