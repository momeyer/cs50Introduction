Buttons = Class{}

function Buttons:init(level)

    self.level = level

    self.selecteds = {}

    table.insert(self.selecteds, Button(507, 80, FACE_LEFT))
    table.insert(self.selecteds, Button(527, 80, WALK))
    table.insert(self.selecteds, Button(547, 80, FACE_RIGHT))
    table.insert(self.selecteds, Button(567, 80, F0))
    table.insert(self.selecteds, Button(507, 100, CONDITIONAL_RED))
    table.insert(self.selecteds, Button(527, 100, CONDITIONAL_BLUE))
    table.insert(self.selecteds, Button(547, 100, CONDITIONAL_YELLOW))
    table.insert(self.selecteds, Button(567, 100, CONDITIONAL_GREY))
    table.insert(self.selecteds, Button(507, 120, PAINT_RED))
    table.insert(self.selecteds, Button(527, 120, PAINT_BLUE))
    table.insert(self.selecteds, Button(547, 120, PAINT_YELLOW))
    table.insert(self.selecteds, Button(567, 120, PAINT_GREY))
    table.insert(self.selecteds, Button(507, 220, RUN))
end

function Buttons:getMouseXY(x, y)
    for i = 1, #self.selecteds do
        if self.selecteds[i]:updateStateSelected(x, y, 3) then
            if self.selecteds[i].action == RUN then
                gameStages.start = true
            else
                self.level:insert(self.selecteds[i].action)
            end
        end
    end
end

function Buttons:getMouseXYReleased(x, y)
    for i = 1, #self.selecteds do
        self.selecteds[i]:updateState(x, y, 1)
    end
end
function Buttons:render()
    love.graphics.setFont(FONT_SMALL)
    love.graphics.printf('Commands:', 507, 70, VIRTUAL_WIDTH, 'left')
    for i = 1, #self.selecteds do
        if self.selecteds[i].active then
            self.selecteds[i]:render()
        end
    end
end
