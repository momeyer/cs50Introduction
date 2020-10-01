Controllers = Class{}

function Controllers:init()
    self.titleX = 130
    self.titleY = 90
    self.title = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    self.buttons = {
        ['button'] = love.graphics.newImage('graphics/grey.png'),
        ['turn_right'] = love.graphics.newImage('graphics/turn_right.png'),
        ['turn_left'] = love.graphics.newImage('graphics/turn_left.png'),
        ['walk'] = love.graphics.newImage('graphics/walk.png'),
        ['f0'] = love.graphics.newImage('graphics/F0.png'),
        ['grey'] = love.graphics.newImage('graphics/greyTile.png'),
        ['red'] = love.graphics.newImage('graphics/red.png'),
        ['yellow'] = love.graphics.newImage('graphics/yellow.png'),
        
        ['reset'] = love.graphics.newImage('graphics/x.png'),
        ['run'] = love.graphics.newImage('graphics/run.png'),
        ['empty'] = love.graphics.newImage('graphics/empty.png')
    }
end

function Controllers:render(text, answerSize)
    love.graphics.setFont(self.title)
    love.graphics.printf(text, self.titleX, self.titleY, VIRTUAL_WIDTH, 'center')

    love.graphics.draw(self.buttons['button'], 310, 112, 0, 0.4)
    love.graphics.draw(self.buttons['turn_left'], 311.5, 113)

    love.graphics.draw(self.buttons['button'], 330, 112, 0, 0.4)
    love.graphics.draw(self.buttons['walk'], 331.5, 113)
    
    love.graphics.draw(self.buttons['button'], 350, 112, 0, 0.4)
    love.graphics.draw(self.buttons['turn_right'], 351.5, 113)
    
    love.graphics.draw(self.buttons['button'], 370, 112, 0, 0.4)
    love.graphics.draw(self.buttons['f0'], 371.5, 113)
    
    love.graphics.draw(self.buttons['grey'], 311, 133, 0, 1.15)

    love.graphics.draw(self.buttons['yellow'], 331, 133, 0, 1.15)
    
    love.graphics.draw(self.buttons['red'], 351, 133, 0, 1.15)
    
    answerStart =  310
    squareOfSet = 20
    for x = 0, answerSize do
        if x == 0 then
            love.graphics.draw(self.buttons['button'], answerStart, 180, 0, 0.4)
            love.graphics.draw(self.buttons['f0'], answerStart + 1, 181)
        else
            love.graphics.draw(self.buttons['empty'], answerStart, 180, 0, 0.4)
            answerStart = answerStart + squareOfSet
        end
    end
end
