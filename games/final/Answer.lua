Answer = Class{}

function Answer:init(numOfSpots, map)
    self.answerBackgroud = love.graphics.newImage('graphics/background.png')
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

    self.index = 2
    self.answerSpots = {}
    self.map = map

    self:getAnswerSpots(numOfSpots)
end

function Answer:getAnswerSpots(numOfSpots)
    local object = getMapObject(self.map, F0)
    local answerSpot = {}
    answerSpot.x = object.x
    answerSpot.y = object.y
    answerSpot.background = self.answerBackgroud
    answerSpot.action = self.actions[F0]
    table.insert(self.answerSpots, answerSpot)

    for i = 1, numOfSpots do
        local object = getMapObject(self.map, 'answer' .. tostring(i))
        local answerSpot = {}
        answerSpot.x = object.x
        answerSpot.y = object.y
        answerSpot.background = self.answerBackgroud
        answerSpot.action = nil
        answerSpot.condition = nil
        table.insert(self.answerSpots, answerSpot)
    end
end

function Answer:setImage(command, index)
    if self.index <= #self.answerSpots then
        self.answerSpots[self.index].action = self.actions[command]
    end
    self.index = self.index + 1
end

function Answer:draw()
    for i = 1, #self.answerSpots do
        if self.answerSpots[i].action ~= nil then
            love.graphics.draw(self.answerSpots[i].background, self.answerSpots[i].x, self.answerSpots[i].y)
            love.graphics.draw(self.answerSpots[i].action, self.answerSpots[i].x, self.answerSpots[i].y)
        end
    end
end
