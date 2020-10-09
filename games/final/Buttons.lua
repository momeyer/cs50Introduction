Buttons = Class{}

function Buttons:init(level)

    self.level = level

    self.selecteds = {}

    local yOne = 80
    local yTwo = 100
    local yThree = 120
    local xOne = 510
    local xTwo = 530
    local xThree = 550
    local xFour = 570

    table.insert(self.selecteds, Button(xOne, yOne, FACE_LEFT))
    table.insert(self.selecteds, Button(xTwo, yOne, WALK))
    table.insert(self.selecteds, Button(xThree, yOne, FACE_RIGHT))
    table.insert(self.selecteds, Button(xFour, yOne, F0))
    table.insert(self.selecteds, Button(xOne, yTwo, CONDITIONAL_RED))
    table.insert(self.selecteds, Button(xTwo, yTwo, CONDITIONAL_BLUE))
    table.insert(self.selecteds, Button(xThree, yTwo, CONDITIONAL_YELLOW))
    table.insert(self.selecteds, Button(xFour, yTwo, CONDITIONAL_GREY))
    table.insert(self.selecteds, Button(xOne, yThree, PAINT_RED))
    table.insert(self.selecteds, Button(xTwo, yThree, PAINT_BLUE))
    table.insert(self.selecteds, Button(xThree, yThree, PAINT_YELLOW))
    table.insert(self.selecteds, Button(xFour, yThree, PAINT_GREY))
    table.insert(self.selecteds, Button(xOne, 220, RUN))
end

function Buttons:getMouseXY(x, y)
    for i = 1, #self.selecteds do
        if self.selecteds[i]:updateStateSelected(x, y) then
            if self.selecteds[i].action == RUN then
                self.level.game.stages.start = true
            else
                self.level:insert(self.selecteds[i].action)
            end
        end
    end
end

function Buttons:getMouseXYReleased()
    for i = 1, #self.selecteds do
        self.selecteds[i]:updateState()
    end
end

function Buttons:render()
    love.graphics.setFont(FONT_SMALL)
    love.graphics.printf('Commands:', 510, 70, VIRTUAL_WIDTH, 'left')
    for i = 1, #self.selecteds do
        if self.selecteds[i].active then
            self.selecteds[i]:render()
        end
    end
end
