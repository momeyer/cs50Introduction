Level1 = Class{}

function Level1:init(controler, title, small)
    self.map = sti("maps/one.lua")
    self.player = Player(map, 96, 190)
    self.control = controler
    self.title = title
    self.small = small
    self.titleX = 130
    self.titleY = 90
    self.commandsY = 125
end

function Level1:update(dt)
    self.map:update(dt)
end

function Level1:drawCommands()
    love.graphics.draw(self.control.buttons['left'], 290, self.commandsY)
    love.graphics.draw(self.control.buttons['up'], 310, self.commandsY)
    love.graphics.draw(self.control.buttons['down'], 330, self.commandsY)
    love.graphics.draw(self.control.buttons['right'], 350, self.commandsY)
    love.graphics.setFont(self.title)
    love.graphics.printf('f0', 370, 122, VIRTUAL_WIDTH, 'left')
    love.graphics.printf('f0', 302, 159, VIRTUAL_WIDTH, 'left') --answer
    love.graphics.printf('f0', 338, 159, VIRTUAL_WIDTH, 'left') --answer
    love.graphics.draw(self.control.buttons['up'], 318, 161) --answer
    love.graphics.rectangle('line', 300, 160, 18, 18)
    love.graphics.rectangle('line', 318, 160, 18, 18)
    love.graphics.rectangle('line', 336, 160, 18, 18)
    love.graphics.draw(self.control.buttons['reset'], 370, 160)
    love.graphics.draw(self.control.buttons['run'], 355, 160)
    love.graphics.draw(self.control.buttons['musicON'], 450, 240)
end

function Level1:render()
    self.map:draw()
    self.player:render()
    love.graphics.setFont(self.title)
    love.graphics.printf('Help Tonny get to school..', self.titleX, self.titleY, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(self.small)
    self:drawCommands()
end
