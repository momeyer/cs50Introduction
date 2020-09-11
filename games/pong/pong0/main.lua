--importing library
Class = require 'class'
push = require 'push'

require 'Ball'
require 'Paddle'

WINDOW_WIDTH = 1180
WINDOW_HEIGHT = 620

VIRTUAL_WIDTH = 632
VIRTUAL_HEIGHT = 343

PADDLE_SPEED = 200

paddle1 = Paddle(5,20, 5, 20)

paddle2 = Paddle(VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 30, 5, 20)
player1Score = 0
player2Score = 0

servingPlayer = math.random(2) == 1 and 1 or 2
winningPlayer = 0

ball = Ball(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 5, 5)

if servingPlayer == 1 then
    ball.dx = -200
else
    ball.dx = -200
end


gameMode = 0
gameState = 'menu'

function love.load()
    math.randomseed(os.time())

    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setTitle("Pong")

    smallFont = love.graphics.newFont('font.TTF', 8)
    scoreFont = love.graphics.newFont('font.TTF', 32)
    victoryFont = love.graphics.newFont('font.TTF', 24)
    
    sounds = {
        ['paddle_hit'] = love.audio.newSource('sounds/paddle_hit.wav', 'static'),
        ['point_scored'] = love.audio.newSource('sounds/score.wav', 'static'),
        ['wall_hit'] = love.audio.newSource('sounds/wall_hit.wav', 'static')
    }

    --def the vistual screen (zoom)
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        vsync = true,
        resizable = true
    })
end

function love.resize(w, h)
    push:resize(w, h)
end

function love.update(dt)
    if gameState == 'play' then

        if ball.x <= 0 then
            player2Score = player2Score + 1
            servingPlayer = 1
            ball:reset()
            ball.dx = 200
            sounds['point_scored']:play()
            if player2Score >= 3 then
                gameState = 'victory'
                winningPlayer = 2
            else
                gameState = 'serve'
            end
        end
        if ball.x > VIRTUAL_WIDTH - 4 then
            player1Score = player1Score + 1
            servingPlayer = 2
            ball:reset()
            ball.dx = -200
            sounds['point_scored']:play()
            if player1Score >= 3 then
                gameState = 'victory'
                winningPlayer = 1
            else
                gameState = 'serve'
            end
        end
    end

    if ball:collides(paddle1) then
        ball.dx = -ball.dx
        sounds['paddle_hit']:play()
    end

    if ball:collides(paddle2) then
        ball.dx = -ball.dx
        sounds['paddle_hit']:play()
    end

    if ball.y <= 0 then
        ball.dy = -ball.dy
        ball.y = 0
        sounds['wall_hit']:play()
    end

    if ball.y >= VIRTUAL_HEIGHT - 4 then
        ball.dy = -ball.dy
        ball.y = VIRTUAL_HEIGHT - 4
        sounds['wall_hit']:play()
    end

    
    paddle1:update(dt)
    paddle2:update(dt)
    
    if gameMode == 1 then
        if love.keyboard.isDown('w') or love.keyboard.isDown('up') then
            paddle1.dy = -PADDLE_SPEED
        elseif love.keyboard.isDown('s') or love.keyboard.isDown('down') then
            paddle1.dy = PADDLE_SPEED
        else
            paddle1.dy = 0
        end
    elseif gameMode == 2 then
        if love.keyboard.isDown('w') then
            paddle1.dy = -PADDLE_SPEED
        elseif love.keyboard.isDown('s') then
            paddle1.dy = PADDLE_SPEED
        else
            paddle1.dy = 0
        end
        if love.keyboard.isDown('up') then
        paddle2.dy = -PADDLE_SPEED
        elseif love.keyboard.isDown('down') then
            paddle2.dy = PADDLE_SPEED
        else
            paddle2.dy = 0
        end
    
    end
    
    if gameState == 'play' then
        ball:update(dt)
        if ball.dx > 0 then
            if ball.y > paddle2.y then
                while( paddle2.y < ball.y)
                do
                paddle2.y = paddle2.y + 0.5
                end
            elseif ball.y < paddle2.y then
                while( paddle2.y > ball.y)
                do
                paddle2.y = paddle2.y - 0.5
                end
            end
        end
    end
end


function love.keypressed(key)
    --quit the game when esq is pressed
    if key == 'escape' and gameState == 'menu' then
        love.event.quit()
    elseif key == 'escape' and gameState == 'play' then
        gameState = 'menu'
        ball:reset()
    elseif key == '1' then
        gameState = 'start'
        title = 'Player vs Computer'
        gameMode = 1
    
    elseif key == '2' then
        gameState = 'start'
        title = 'Player vs Player 2'
        gameMode = 2
        
    elseif key == 'enter' or key == 'return' then
        if gameState == 'start' then
            gameState = 'serve'
        elseif gameState == 'serve' then
            gameState = 'play'
        elseif gameState == 'victory' then
            player1Score = 0
            player2Score = 0
            gameState = 'start'
        end
    end
end


function love.draw()
    push:apply('start')

    --supposed to change background color, but doesnt work
    love.graphics.clear(40/255, 45/255, 52/255, 255/255)

    --def the title
    if gameState == 'menu' then
        love.graphics.setFont(victoryFont)
        love.graphics.printf('Welcome to Pong!', 0, 20, VIRTUAL_WIDTH, 'center')
        love.graphics.setFont(smallFont)
        love.graphics.printf('1 - Player vs Computer', 0, 45, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('2 - Player vs Player', 0, 55, VIRTUAL_WIDTH, 'center')
    end

    ball:render()
    paddle1:render()
    paddle2:render()

    displayFPS()

    if gameState == 'start' then
        love.graphics.printf(title, 0, 20, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Press ENTER to start', 0, 32, VIRTUAL_WIDTH, 'center')
    elseif gameState == 'serve' then
        love.graphics.printf('Player ' .. tostring(servingPlayer) .. "'s turn", 0, 20, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Press ENTER to hit the ball', 0, 32, VIRTUAL_WIDTH, 'center')
        --draw the initial scores
    elseif gameState == 'victory' then
        love.graphics.setFont(victoryFont)
        love.graphics.printf('Player ' .. tostring(winningPlayer) .. " wins!", 0, 10, VIRTUAL_WIDTH, 'center')
        love.graphics.setFont(smallFont)
        love.graphics.printf('Press ENTER to restart', 0, 42, VIRTUAL_WIDTH, 'center')
    end
    love.graphics.setFont(scoreFont)
    love.graphics.print(player1Score, VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 3)
    love.graphics.print(player2Score, VIRTUAL_WIDTH / 2 + 30, VIRTUAL_HEIGHT / 3)
    push:apply('end')
end

function displayFPS()
    love.graphics.setColor(0,255,0,255)
    love.graphics.setFont(smallFont)
    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 40, 20)
    love.graphics.setColor(255,255,255,255)
end

function displayScore()
    love.graphics.setFont(scoreFont)
    love.graphics.print(tostring(player1Score), VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 3)
    love.graphics.print(tostring(player2Score), VIRTUAL_WIDTH / 2 - 30, VIRTUAL_HEIGHT / 3)
end