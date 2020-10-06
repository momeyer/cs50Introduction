Class = require 'class'
push = require 'push'
sti = require "sti"
require 'Definitions'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    love.physics.setMeter(32)

    controller = Controllers()
    levels = {Level1(controller), Level2(controller), Level3(controller), Level4(controller)}

    level = levels[gameStages.level]

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

    keys = {
        ['a'] = FACE_LEFT,
        ['s'] = WALK,
        ['d'] = FACE_RIGHT,
        ['f'] = F0,
        ['g'] = CONDITIONAL_GREY,
        ['y'] = CONDITIONAL_YELLOW,
        ['b'] = CONDITIONAL_BLUE,
        ['r'] = CONDITIONAL_RED,
        ['p'] = PAINT_GREY,
    }
end

function love.keypressed(key, scancode, isrepeat)
    
    if key == "escape" then
        level.world:destroy()
        love.event.quit()
    end

    if key == "return" then
        print('start')
        gameStages.start = true
    end

    if keys[key] ~= nil then
        level:insert(keys[key])
    end
end

function love.update(dt)
    level:update(dt)
end

-- function Level1:displayFailMessage()
--     if self.fail then
--         failFont = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
--         love.graphics.setFont(failFont)
--         love.graphics.printf('try again ...', VIRTUAL_WIDTH / 3, VIRTUAL_HEIGHT / 2, VIRTUAL_WIDTH, 'center')
--     end
-- end

function love.draw()
    push:apply('start')
    level:render()
    push:apply('end')
end
