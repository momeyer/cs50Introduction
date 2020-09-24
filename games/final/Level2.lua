Level2 = Class{}

function Level2:init(controler)
    self.map = sti("maps/two.lua")

    self.player = Player(self.map, 'right', 9)
    self.control = controler
    self.commandsY = 125
    self.text = 'Help Tonny get to school..'
    self.answerSize = 6
end

function Level2:update(dt)
    self.map:update(dt)
end

function Level2:drawSelectedButtons(second, third, fourth, fith, sixth)
    love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
    love.graphics.draw(self.control.buttons[second], 325, 161) --answer
    love.graphics.draw(self.control.buttons[third], 339, 161) --answer
    love.graphics.draw(self.control.buttons[fourth], 356, 161) --answer
    love.graphics.draw(self.control.buttons[fith], 371, 161) --answer
    love.graphics.draw(self.control.buttons[sixth], 385, 160) --answer
end


function Level2:drawCommands()
    
    self.control:render(self.text, self.answerSize)
    self:drawSelectedButtons('up', 'left', 'up', 'right', 'f0')
end

function Level2:render()
    self.map:draw()
    self:drawCommands()
    self.player:draw()
end
