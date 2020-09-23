Level1 = Class{}

function Level1:init(controler)
    self.map = sti("maps/one1.lua")

    self.player = Player(self.map, 'up', 96, 190, 7)
    self.control = controler
    self.title = title
    self.small = small
    self.text = 'Help Tony to get home'
    self.answerSize = 3

   
end

function Level1:update(dt)
    self.map:update(dt)
end

function Level1:drawCommands()
     
    self.control:render(self.text, self.answerSize)

    love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
    love.graphics.draw(self.control.buttons['up'], 325, 161) --answer
    love.graphics.draw(self.control.buttons['f0'], 340, 160) --answer
    
end

function Level1:render()
    self.player:draw()
    self.map:draw()
    self:drawCommands()
end
