Class = require 'class'
push = require 'push'
sti = require "sti"
require 'Definitions'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    love.physics.setMeter(32)
    
    controller = Controllers()
    --level = Level1(controller)
    --level = Level2(controller)
    -- level = Level3(controller)
    level = Level4(controller)

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
        level:run()
    end

    if key == 'r' then
        level:reset()
    end

    if keys[key] ~= nil then
        level:insert(keys[key])
    end
end

function love.update(dt)
    level:update(dt)
end

function love.draw()
    push:apply('start')
    level:render()
    push:apply('end')
end
