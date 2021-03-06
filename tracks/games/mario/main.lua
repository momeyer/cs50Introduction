--[[
    Super Mario Bros. Demo
    Author: Colton Ogden
    Original Credit: Nintendo

    Demonstrates rendering a screen of tiles.
]]

Class = require 'class'
push = require 'push'

require 'Animation'
require 'Map'
require 'Player'
require 'Tiles'
require 'Util'

-- seed RNG
math.randomseed(os.time())

-- makes upscaling look pixel-y instead of blurry
love.graphics.setDefaultFilter('nearest', 'nearest')

-- an object to contain our map data
map = Map()

-- performs initialization of all objects and data needed by program
function love.load()
    -- sets up virtual screen resolution for an authentic retro feel
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true
    })

    love.keyboard.keysPressed = {}
    love.keyboard.keysReleased = {}
end

-- called whenever window is resized
function love.resize(w, h)
    push:resize(w, h)
end

-- global key pressed function
function love.keyboard.wasPressed(key)
    if (love.keyboard.keysPressed[key]) then
        return true
    else
        return false
    end
end

-- global key released function
function love.keyboard.wasReleased(key)
    if (love.keyboard.keysReleased[key]) then
        return true
    else
        return false
    end
end

-- called whenever a key is pressed
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    elseif key == 'enter' or key == 'return' then
        STARTED = true
    elseif key == 'r' then
        reset()
    end
    love.keyboard.keysPressed[key] = true
end

-- called whenever a key is released
function love.keyreleased(key)
    love.keyboard.keysReleased[key] = true
end

-- called every frame, with dt passed in as delta in time since last frame
function love.update(dt)
    map:update(dt)
    -- reset all keys pressed and released this frame
    love.keyboard.keysPressed = {}
    love.keyboard.keysReleased = {}
    
end

function drawMenu()
    love.graphics.draw(menuImage, 50, 25)
    love.graphics.setFont(menuFont)
    --makes text blink
    if math.floor(love.timer.getTime()) % 2 ~= 0 then
        love.graphics.printf('PRESS ENTER TO START', 0, 150, VIRTUAL_WIDTH, 'center')
    end
    
end

function reset()
    love.timer.sleep(0.1)
    map.music:stop()
    map:init()
end

-- called each frame, used to render to the screen
function love.draw()
    -- begin virtual resolution drawing
    push:apply('start')
    if STARTED == false then
        love.graphics.clear(108/255, 140/255, 255/255, 255/255)
        love.graphics.translate(math.floor(-map.camX + 0.5), math.floor(-map.camY + 0.5))
        map:render()
        drawMenu()
    elseif STARTED == true then
        love.graphics.clear(108/255, 140/255, 255/255, 255/255)
        love.graphics.translate(math.floor(-map.camX + 0.5), math.floor(-map.camY + 0.5))
        map:render()
        map.player:render()
    end
    -- end virtual resolution
    push:apply('end')
end
