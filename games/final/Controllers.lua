Buttons = Class{}

function Buttons:init(level)
    self.titleX = 130
    self.titleY = 90
    self.title = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    self.level = level

    self.selecteds = {}

    table.insert(self.selecteds, Button(450, 150, FACE_LEFT))
    table.insert(self.selecteds, Button(470, 150, WALK))
    table.insert(self.selecteds, Button(490, 150, FACE_RIGHT))
    table.insert(self.selecteds, Button(510, 150, F0))
    table.insert(self.selecteds, Button(450, 170, CONDITIONAL_RED))
    table.insert(self.selecteds, Button(470, 170, CONDITIONAL_BLUE))
    table.insert(self.selecteds, Button(490, 170, CONDITIONAL_YELLOW))
    table.insert(self.selecteds, Button(510, 170, CONDITIONAL_GREY))
    table.insert(self.selecteds, Button(450, 190, PAINT_RED))
    table.insert(self.selecteds, Button(470, 190, PAINT_BLUE))
    table.insert(self.selecteds, Button(490, 190, PAINT_YELLOW))
    table.insert(self.selecteds, Button(510, 190, PAINT_GREY))
    
end

function Buttons:getMouseXY(x, y)
    for i = 1, #self.selecteds do
        if self.selecteds[i]:updateStateSelected(x, y, 3) then
            self.level:insert(self.selecteds[i].action)
        end
    end
end

function Buttons:getMouseXYReleased(x, y)
    for i = 1, #self.selecteds do
        self.selecteds[i]:updateState(x, y, 1)
    end
end

function Buttons:update(dt)
    -- for i = 1, #self.selecteds do
    --     self.selecteds[i]:update(dt, self.mouseX, self.mouseY)
    -- end
end

function Buttons:render(text, answerSize)
    for i = 1, #self.selecteds do
        if self.selecteds[i].active then
            self.selecteds[i]:render()
        end
    end
    
    --self.title = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    -- love.graphics.setFont(self.title)
    -- love.graphics.printf(text, self.titleX, self.titleY, VIRTUAL_WIDTH, 'center')

    -- love.graphics.draw(self.buttons['button'], 310, 112, 0, 0.4)
    -- love.graphics.draw(self.buttons['turn_left'], 311.5, 113)

    -- love.graphics.draw(self.buttons['button'], 330, 112, 0, 0.4)
    -- love.graphics.draw(self.buttons['walk'], 331.5, 113)
    
    -- love.graphics.draw(self.buttons['button'], 350, 112, 0, 0.4)
    -- love.graphics.draw(self.buttons['turn_right'], 351.5, 113)
    
    -- love.graphics.draw(self.buttons['button'], 370, 112, 0, 0.4)
    -- love.graphics.draw(self.buttons['f0'], 371.5, 113)
    
    -- love.graphics.draw(self.buttons['grey'], 311, 133, 0, 1.15)

    -- love.graphics.draw(self.buttons['yellow'], 331, 133, 0, 1.15)
    
    -- love.graphics.draw(self.buttons['red'], 351, 133, 0, 1.15)
    
    -- answerStart =  310
    -- squareOfSet = 20
    -- for x = 0, answerSize do
    --     if x == 0 then
    --         love.graphics.draw(self.buttons['button'], answerStart, 180, 0, 0.4)
    --         love.graphics.draw(self.buttons['f0'], answerStart + 1, 181)
    --     else
    --         love.graphics.draw(self.buttons['empty'], answerStart, 180, 0, 0.4)
    --         answerStart = answerStart + squareOfSet
    --     end
    -- end
end
