Button = Class{}

function Button:init(x, y, action)
    self.buttonStates = {
        [1] = love.graphics.newImage('graphics/button.png'),
        [2] = love.graphics.newImage('graphics/buttonHover.png'),
        [3] = love.graphics.newImage('graphics/buttonPressed.png')
    }

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
        }

    self.x = x
    self.y = y
    self.imageX = self.x
    self.imageY = self.y
    self.action = action
    self.buttonState = 1
    self.active = true
    self.isDown = false
end

function Button:updateStateSelected(x, y, state)
    if x > self.x * 2.203 and x < (self.x + 17) * 2.203 and y > self.y * 2.203 and y < (self.y + 17) * 2.203 and state == 3 then
        self.buttonState = state
        self.isDown = true
    else
        self.isDown = false
    end
end

function Button:updateState(x, y, state)
    self.isDown = false
    self.buttonState = state
end

function Button:render()
    love.graphics.draw(self.buttonStates[self.buttonState], self.x, self.y)
    love.graphics.draw(self.actions[self.action], self.imageX, self.imageY)
end
