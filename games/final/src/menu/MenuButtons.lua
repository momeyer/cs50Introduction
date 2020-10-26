MenuButtons = Class{}

function MenuButtons:init(game, playButton, instructionButton, nextButton)

    self.game = game
    self.playButton = playButton
    self.instructionButton = instructionButton
    self.nextButton = nextButton
end

function MenuButtons:getMouseXY(x, y)
    self.playButton:updateStateSelected(x, y)
    self.instructionButton:updateStateSelected(x, y)
    self.nextButton:updateStateSelected(x, y)
end

function MenuButtons:getMouseXYReleased()
    if self.playButton:updateState() then
        --
    end
    if self.instructionButton:updateState() then
        --
    end
    if self.nextButton:updateState() then
        --
    end
end

function MenuButtons:render()
    if self.game:isMenu() then
        self.playButton:draw()
        self.instructionButton:draw()
    end

    -- if self.game:isInstruction() then
    --     self.nextButton:draw()
    -- else
    --     self.playButton:draw()
    --     self.instructionButton:draw()
    -- end
end
