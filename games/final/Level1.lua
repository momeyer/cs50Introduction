Level1 = Class{}

function Level1:init(controler)
    self.map = sti("maps/one.lua")

    self.player = Player(self.map, FACE_UP, 6)
    self.control = controler
    self.title = title
    self.small = small
    self.text = 'Help Tony to get home'
    self.answerSize = 3
    self.doorX = 96
    self.doorY = 73
    
    self.doorOpen = love.graphics.newImage('graphics/door1.png')

    self.f0 = {WALK, 'f0'}
    self.f0NextInstruction = 1
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
    --self:drawSelectedButtons('walk', 'f0')
end

function Level1:run(dt)
    if self.f0[self.f0NextInstruction] == WALK then
        self.player.move[WALK]()
    elseif self.f0[self.f0NextInstruction] == 'f0' then
        self.f0NextInstruction = 0
    else
        self.player.move[self.f0[self.f0NextInstruction]]()
    end
    love.timer.sleep(0.05)
    self.f0NextInstruction = self.f0NextInstruction + 1
    print(self.f0NextInstruction)
end

function Level1:render()
    self.map:draw()
    self:drawCommands()
    self.player:draw()
end