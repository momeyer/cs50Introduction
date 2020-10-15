Class = require 'class'
push = require 'push'
sti = require "sti"
require 'Definitions'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    love.physics.setMeter(32)
    love.window.setTitle('Can you help Tonny?')
    numLevels = 5
    levels = createLevels(numLevels)
    levelIndex = 5
    level = Level(levels[levelIndex])

    menu = Menu(level.game.stages)

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
        if level.game.stages.menu then
            menu.buttons:getMouseXY(x, y)
        else
            level.buttons:getMouseXY(x, y)
        end
    end
    
end

function love.mousereleased(x, y, button)
    if button == 1 then
        if level.game.stages.menu then
            menu.buttons:getMouseXYReleased()
        else
            level.buttons:getMouseXYReleased()
        end
    end
end

function love.keypressed(key, scancode, isrepeat)
    
    if key == "escape" then
        level.world:destroy()
        love.event.quit()
    end

    if key == "a" then
       level.game.stages.menu = false
    end

    if key == "space" and level.game.stages.fail then
        level:init(levels[levelIndex])
    end
    
    if key == "return" and level.game.stages.endGame then
        levelIndex = levelIndex + 1
        if levelIndex <= numLevels then
            level = Level(levels[levelIndex])
        else
            level.game.stages.menu = true
        end
    end


end

function love.update(dt)
    level:update(dt)
    menu:update(dt)
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

    if level.game.stages.menu then
        menu:draw()
    else
        push:apply('start')
        level:render()
        if level.game.stages.endGame then
            displayNextLevelMessage()
        elseif level.game.stages.fail then
            displayFailMessage()
        end
        push:apply('end')
    end
end
