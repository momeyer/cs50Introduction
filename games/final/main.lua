Class = require 'class'
push = require 'push'
sti = require "sti"
require 'Definitions'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    love.physics.setMeter(32)

    levels = {Level1(), Level2(), Level3(), Level4()}

    level = levels[gameStages.level]
    -- level = Level2()
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
        level.buttons:getMouseXY(x, y)
    end
end

function love.mousereleased(x, y, button)
   if button == 1 then
        level.buttons:getMouseXYReleased(x, y)
    end
end

function love.keypressed(key, scancode, isrepeat)
    
    if key == "escape" then
        level.world:destroy()
        love.event.quit()
    end

    if key == "space" and gameStages.fail then
        level:init()
    end
    
    if key == "return" and gameStages.endGame then
        gameStages.start = false
        gameStages.endGame = false
        gameStages.fail = false
        gameStages.level = gameStages.level + 1
        level = levels[gameStages.level]
        level:init()
    end
end

function love.update(dt)
    level:update(dt)
end

function displayFailMessage()
    failFont = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    love.graphics.setFont(failFont)
    love.graphics.printf('Press SPACE to try again ...', 15, VIRTUAL_HEIGHT - 50, VIRTUAL_WIDTH, 'left')
end

function displayNextLevelMessage()
    failFont = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    love.graphics.setFont(failFont)
    love.graphics.printf('Press ENTER for next level', 15, VIRTUAL_HEIGHT - 50, VIRTUAL_WIDTH, 'left')
end

function love.draw()
    push:apply('start')
    level:render()
    
    love.graphics.setFont(FONT_LARGE)
    love.graphics.printf('Level ' .. gameStages.level, 15, VIRTUAL_HEIGHT - 30, VIRTUAL_WIDTH, 'left')

   
    if gameStages.endGame then
        displayNextLevelMessage()
    elseif gameStages.fail then
        displayFailMessage()
    end
    
    push:apply('end')
end
