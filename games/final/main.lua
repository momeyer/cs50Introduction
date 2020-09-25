Class = require 'class'
push = require 'push'
sti = require "sti"

require 'Definitions'

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    
    controller = Controllers()
    --level = Level1(controller)
    --level = Level2(controller)
    level = Level3(controller)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
    print('hello')
    
    
end

function love.update(dt)
    level:update(dt)
    if love.keyboard.isDown("a") then
        level:run(dt)
    end
    if love.keyboard.isDown("escape") then
        love.event.quit()
    end

end

function love.draw()
    push:apply('start')
    level:render()
    push:apply('end')
end