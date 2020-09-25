Level3 = Class{}

function Level3:init(controler, title, small)
    self.map = sti("maps/three.lua")
    self.player = Player(self.map, 'up', 9)
    self.control = controler
    self.title = title
    self.small = small
    self.text ='Help Tonny get to the park'
    self.answerSize = 6
end

function Level3:update(dt)
    self.map:update(dt)
end

function Level3:drawSelectedButtons(second, third, fourth, fith, sixth, seventh, eighth)
    love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
    love.graphics.draw(self.control.buttons[second], 325, 161) --answer
    love.graphics.draw(self.control.buttons[third], 340, 160) --answer
    love.graphics.draw(self.control.buttons[fourth], 339, 161) --answer
    love.graphics.draw(self.control.buttons[fith], 356, 160) --answer
    love.graphics.draw(self.control.buttons[sixth], 356, 161) --answer
    love.graphics.draw(self.control.buttons[seventh], 371, 161) --answer
    love.graphics.draw(self.control.buttons[eighth], 385, 160) --answer 
end


function Level3:drawCommands()
    self.control:render(self.text, self.answerSize)
    --self:drawSelectedButtons('up', 'grey', 'left', 'grey', 'up', 'right', 'f0') --answer
end

function Level3:render()
    self.map:draw()
    self:drawCommands()
    self.player:draw()
end
