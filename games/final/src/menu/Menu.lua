Menu = Class{}

function Menu:init(game)

    self.game = game
    self.game:setMenuStage()
    self.images = {
        [MENU] = love.graphics.newImage(MENU_IMAGE),
        [INSTRUCTION1] = love.graphics.newImage(INSTRUCTION_1_IMAGE),
        [INSTRUCTION2] = love.graphics.newImage(INSTRUCTION_2_IMAGE),
        [THE_END] = love.graphics.newImage(THE_END_IMAGE),
    }

    self.curImage = MENU
    self.image = self.images[self.curImage]
    self.playButtonY = 370
    self.instructionButtonY = self.playButtonY + 70
    self.nextButtonY = 540
    self.buttons = MenuButtons(self.game, MenuButton(self.playButtonY, PLAY), MenuButton(self.instructionButtonY, INSTRUCTION), MenuButton(self.nextButtonY, NEXT))
end

function Menu:update(dt)
    self:selectImageToDisplay()
end

function Menu:selectImageToDisplay()
    if self.game:isInstruction() then
        self.curImage = self.gameStages.instruction
    end
end

function Menu:draw()
    if not self.game:isInstruction() then
        love.graphics.draw(self.images[self.curImage], 0, 0)
        self.buttons:render()
    else
        love.graphics.clear(108/255, 140/255, 255/255, 255/255)
        love.graphics.draw(self.images[self.curImage], 0, 0, 0, 2.2)
        self.buttons:render()
    end
end