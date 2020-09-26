Level2 = Class{}

function Level2:init(controler)
    self.map = sti("maps/two.lua")

    self.player = Player(self.map, FACE_RIGHT, 9)
    self.control = controler
    self.text = 'Help Tonny get to school..'
    self.answerSize = 6

    self.f0 = {}
    self.f0NextInstruction = 1
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

function Level2:run()
    if self.f0[self.f0NextInstruction] == WALK then
        self.player.move[WALK]()
    elseif self.f0[self.f0NextInstruction] == F0 then
        print(self.f0[self.f0NextInstruction])
        self.f0NextInstruction = 0
    elseif self.f0[self.f0NextInstruction] == FACE_LEFT or self.f0[self.f0NextInstruction] == FACE_RIGHT then
        self.player.move[self.f0[self.f0NextInstruction]]()
    end
    love.timer.sleep(0.05)
    print(self.f0NextInstruction)
    if self.f0NextInstruction < self.answerSize then
        self.f0NextInstruction = self.f0NextInstruction + 1
    end
end

function Level2:drawCommands()
    self.control:render(self.text, self.answerSize)
    --self:drawSelectedButtons(WALK, 'left', WALK, 'right', 'f0')
end

function Level2:render()
    self.map:draw()
    self:drawCommands()
    self.player:draw()
end
