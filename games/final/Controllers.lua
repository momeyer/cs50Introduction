Controllers = Class{}

function Controllers:init()
    self.titleX = 130
    self.titleY = 90
    self.title = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    self.buttons = {
        ['right'] = love.graphics.newImage('graphics/right.png'),
        ['left'] = love.graphics.newImage('graphics/left.png'),
        ['up'] = love.graphics.newImage('graphics/up.png'),
        ['down'] = love.graphics.newImage('graphics/down.png'),
        ['f0'] = love.graphics.newImage('graphics/F0.png'),
        ['musicON'] = love.graphics.newImage('graphics/ON.png'),
        ['musicOFF'] = love.graphics.newImage('graphics/OFF.png'),
        ['reset'] = love.graphics.newImage('graphics/x.png'),
        ['run'] = love.graphics.newImage('graphics/run.png'),
        ['empty'] = love.graphics.newImage('graphics/empty.png'),
        ['grey'] = love.graphics.newImage('graphics/grey.png'),
        ['beige'] = love.graphics.newImage('graphics/beige.png'),
    }
end

function Controllers:render(text, answerSize)
    love.graphics.setFont(self.title)
    love.graphics.printf(text, self.titleX, self.titleY, VIRTUAL_WIDTH, 'center')
    
    love.graphics.draw(self.buttons['left'], 310, 125)
    love.graphics.draw(self.buttons['up'], 330, 125)
    love.graphics.draw(self.buttons['down'], 350, 125)
    love.graphics.draw(self.buttons['right'], 370, 125)
    love.graphics.draw(self.buttons['f0'], 390, 125)
    love.graphics.draw(self.buttons['grey'], 410, 125)
    love.graphics.draw(self.buttons['beige'], 430, 125)
    
    love.graphics.draw(self.buttons['musicON'], 450, 240)
    
    answerStart =  310
    squareOfSet = 15
    for x = answerSize, 1, -1 do
        love.graphics.draw(self.buttons['empty'], answerStart, 160)
        answerStart = answerStart + squareOfSet
    end

    love.graphics.draw(self.buttons['reset'], answerStart, 160)
    love.graphics.draw(self.buttons['run'], answerStart + 10, 160)
    
end
