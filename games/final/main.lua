Class = require 'class'
push = require 'push'
sti = require "sti"
require 'Definitions'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    love.physics.setMeter(32)

    levels = createLevels(4)

    levelIndex = 1
    level = Level(levels[levelIndex])

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

function createLevels(numLevels)
    levels = {}
    for i = 1, numLevels do
        table.insert(levels, 'maps/' .. tostring(i) .. '.lua')
    end

    return levels
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

    if key == "space" and level.game.stages.fail then
        level:init(levels[levelIndex])
    end
    
    if key == "return" and level.game.stages.endGame then
        levelIndex = levelIndex + 1
        level = Level(levels[levelIndex])
    end
end

function love.update(dt)
    level:update(dt)
end

function displayFailMessage()
    love.graphics.setFont(FONT_LARGE)
    love.graphics.printf('Press SPACE to try again ...', 15, VIRTUAL_HEIGHT - 50, VIRTUAL_WIDTH, 'left')
end

function displayNextLevelMessage()
    love.graphics.setFont(FONT_LARGE)
    love.graphics.printf('Press ENTER for next level', 15, VIRTUAL_HEIGHT - 50, VIRTUAL_WIDTH, 'left')
end

function love.draw()
    push:apply('start')
    level:render()
    
    -- love.graphics.printf('Level ' .. level.gameStages.level, 15, VIRTUAL_HEIGHT - 30, VIRTUAL_WIDTH, 'left')

    if level.game.stages.endGame then
        displayNextLevelMessage()
    elseif level.game.stages.fail then
        displayFailMessage()
    end
    
    push:apply('end')
end
