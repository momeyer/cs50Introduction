Level3 = Class{}

function Level3:init(controler, title, small)
    self.map = sti("maps/three.lua")
    self.player = Player(self.map, 'up', 272, 222, 9)
    self.control = controler
    self.title = title
    self.small = small
    self.text ='Help Tonny get to the park'
    self.answerSize = 6
end

function Level3:update(dt)
    self.map:update(dt)
end

function Level3:drawCommands()

    --NEED TO ADD COLOR OPTIONS SOMEHOW. TILE, GRASS, GROUND

    self.control:render(self.text, self.answerSize)

    love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
    love.graphics.draw(self.control.buttons['up'], 325, 161) --answer
    love.graphics.draw(self.control.buttons['left'], 339, 161) --answer
    love.graphics.draw(self.control.buttons['up'], 356, 161) --answer
    love.graphics.draw(self.control.buttons['right'], 371, 161) --answer
    love.graphics.draw(self.control.buttons['f0'], 385, 160) --answer 
end

function Level3:render()

    self.player:draw()
    self.map:draw()
    self:drawCommands()
end
