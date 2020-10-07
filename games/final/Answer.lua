Answer = Class{}

function Answer:init(x)
    self.answerBackgroud = love.graphics.newImage('graphics/button.png')

    self.actions = {
        [FACE_RIGHT] = love.graphics.newImage('graphics/turn_right.png'),
        [FACE_LEFT] = love.graphics.newImage('graphics/turn_left.png'),
        [WALK] = love.graphics.newImage('graphics/walk.png'),
        [F0] = love.graphics.newImage('graphics/F0.png'),
        [CONDITIONAL_GREY] = love.graphics.newImage('graphics/greyTile.png'),
        [CONDITIONAL_RED] = love.graphics.newImage('graphics/red.png'),
        [CONDITIONAL_YELLOW] = love.graphics.newImage('graphics/yellow.png'),
        [CONDITIONAL_BLUE] = love.graphics.newImage('graphics/blue.png'),
        [PAINT_GREY] = love.graphics.newImage('graphics/paint_grey.png'),
        [PAINT_RED] = love.graphics.newImage('graphics/paint_red.png'),
        [PAINT_YELLOW] = love.graphics.newImage('graphics/paint_yellow.png'),
        [PAINT_BLUE] = love.graphics.newImage('graphics/paint_blue.png'),
        [RUN] = love.graphics.newImage('graphics/run.png'),
        }

    self.x = x
    self.y = 150
    self.imageX = self.x
    self.imageY = self.y
    self.action = nil
    self.condition = nil 
    self.buttonState = 1
    self.active = true
    self.isDown = false

end

function Answer:render()
    love.graphics.draw(self.answerBackgroud, self.x, self.y)
    if self.condition ~= nil then
        love.graphics.draw(self.condition, self.imageX, self.imageY)
    end
    if self.action ~= nil then
        love.graphics.draw(self.action, self.imageX, self.imageY)
    end
end
