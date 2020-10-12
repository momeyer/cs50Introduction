Buttons = Class{}

function Buttons:init(level)

    self.level = level
    self.firstRow = {FACE_LEFT, WALK, FACE_RIGHT, F0}
    
    self.selecteds = {}

    self:create()
end

function Buttons:insertRow(x, y, buttons)
    for i = 1, #buttons do
        table.insert(self.selecteds, Button(x, y, buttons[i]))
        x = x + 20
    end
end

function Buttons:getButtonsFromMap()
    local secondRow = self.level.map.layers.buttonsSecondRow.properties
    local thirdRow = self.level.map.layers.buttonsThirdRow.properties
    
    local second = {}
    for i, v in pairs(secondRow) do
        table.insert(second, v)
    end
    
    local third = {}
    for i, v in pairs(thirdRow) do
        table.insert(third, v)
    end

    return second, third
end

function Buttons:create()
    second, third = self:getButtonsFromMap()
    local yCoordinates = {170, 190, 210, 245}
    local buttonsList = {self.firstRow, second, third, {RUN}}
    local x = 490
    
    for i = 1, #buttonsList do
        self:insertRow(x, yCoordinates[i], buttonsList[i])
    end
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
    love.graphics.printf('Commands:', 490, 160, VIRTUAL_WIDTH, 'left')
    for i = 1, #self.selecteds do
        if self.selecteds[i].active then
            self.selecteds[i]:render()
        end
    end
end
