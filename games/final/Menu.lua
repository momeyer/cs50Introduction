Menu = Class{}

menu = 1
instruction1 = 2
instruction2 = 3
theEnd = 4

function Menu:init(gameStages)

    self.gameStages = gameStages
    self.gameStages.menu = true
    self.images = {
        [menu] = love.graphics.newImage(MENU_IMAGE),
        [instruction1] = love.graphics.newImage(INSTRUCTION_1),
        [instruction2] = love.graphics.newImage(INSTRUCTION_2),
        [theEnd] = love.graphics.newImage(THE_END),
    }

    self.curImage = menu
    self.image = self.images[self.curImage]
    self.playButtonY = 370
    self.instructionButtonY = self.playButtonY + 70
    self.nextButtonY = 540
    self.buttons = MenuButtons(gameStages, MenuButton(self.playButtonY, PLAY), MenuButton(self.instructionButtonY, INSTRUCTION), MenuButton(self.nextButtonY, NEXT))
end

function Menu:update(dt)
    self:selectImageToDisplay()

    if self.gameStages.theEnd then
        self.curImage = 4
    end
end

function Menu:selectImageToDisplay()
    if self.gameStages.instruction ~= nil then
        self.curImage = self.gameStages.instruction
    end
end

function Menu:draw()
    if self.gameStages.instruction == nil then
        love.graphics.draw(self.images[self.curImage], 0, 0)
        if not self.gameStages.theEnd then
            self.buttons:render()
        end
    else
        love.graphics.clear(108/255, 140/255, 255/255, 255/255)
        love.graphics.draw(self.images[self.curImage], 0, 0, 0, 2.2)
        self.buttons:render()
    end
end