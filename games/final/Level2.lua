Level2 = Class{}

function Level2:init(controler)
    self.map = sti("maps/two.lua")

    self.player = Player(self.map, 'right', 50, 222, 9)
    self.control = controler
    self.commandsY = 125
    self.text = 'Help Tonny get to school..'
    self.answerSize = 6
end

function Level2:update(dt)
    self.map:update(dt)
end

function Level2:drawCommands()
    
    self.control:render(self.text, self.answerSize)

    love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
    love.graphics.draw(self.control.buttons['up'], 325, 161) --answer
    love.graphics.draw(self.control.buttons['left'], 339, 161) --answer
    love.graphics.draw(self.control.buttons['up'], 356, 161) --answer
    love.graphics.draw(self.control.buttons['right'], 371, 161) --answer
    
    love.graphics.draw(self.control.buttons['f0'], 385, 160) --answer
    
end

function Level2:render()
    self.map:draw()
    self:drawCommands()
end
