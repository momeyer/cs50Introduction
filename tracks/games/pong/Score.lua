
Score = Class{}

function Score:init(maxScore)
    self.max = maxScore
    self.player1 = 0
    self.player2 = 0
    self.font = love.graphics.newFont('font.ttf', 32)
end

function Score:hasWinner()
    if self.player1 >= self.max then
        return 1
    end
    if self.player2 >= self.max then
        return 2
    end

    return 0
end

function Score:update(playerNumber)
    if playerNumber == 1 then
        self.player1 = self.player1 + 1
    else
        self.player2 = self.player2 + 1    
    end
    sounds['score']:play()
end

function Score:render()
    player1X = VIRTUAL_WIDTH / 2 - 50
    player1Y = VIRTUAL_HEIGHT / 3
    player2X = VIRTUAL_WIDTH / 2 + 30
    player2Y = VIRTUAL_HEIGHT / 3
    
    love.graphics.setFont(self.font)
    love.graphics.print(tostring(self.player1), player1X, player1Y)
    love.graphics.print(tostring(self.player2), player2X, player2Y)
end