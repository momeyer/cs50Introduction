MenuButtons = Class{}

function MenuButtons:init(gameStages, playButton, instructionButton, nextButton)
    
    self.gameStages = gameStages
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
        self.gameStages.menu = false
    end
    if self.instructionButton:updateState() then
        self.gameStages.instruction = 2
    end
    if self.nextButton:updateState() then
        print(self.gameStages.instruction)
        if self.gameStages.instruction < 3 then
            self.gameStages.instruction = self.gameStages.instruction + 1
        else
            self.gameStages.menu = false
        end
    end
end

function MenuButtons:render()
    if self.gameStages.instruction ~= nil then
        self.nextButton:draw()
    else
        self.playButton:draw()
        self.instructionButton:draw()
    end
end
