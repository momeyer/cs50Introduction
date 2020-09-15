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

-- close resolution to NES but 16:9
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

-- actual window resolution
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

LEVEL = 1
-- seed RNG
math.randomseed(os.time())

-- makes upscaling look pixel-y instead of blurry

-- an object to contain our map data
map = Map()
start = false
-- performs initialization of all objects and data needed by program
function love.load()
    menu = {}
    menu.x = 60
    menu.y = 25
    menu.image = love.graphics.newImage("graphics/alien_world.png")

    -- sets up virtual screen resolution for an authentic retro feel
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true
    })

    love.window.setTitle('Super Mario 50')
    love.graphics.setDefaultFilter('nearest', 'nearest')
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
        start = true
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
    love.graphics.draw(menu.image, menu.x, menu.y)
    love.graphics.setFont(love.graphics.newFont('fonts/font.ttf', 8))

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
    -- clear screen using Mario background blue
    love.graphics.clear(108/255, 140/255, 255/255, 255/255)
    
    if start == false then
        love.graphics.translate(math.floor(-map.camX + 0.5), math.floor(-map.camY + 0.5))
        map:render()
        drawMenu()
    elseif start == true then
        love.graphics.translate(math.floor(-map.camX + 0.5), math.floor(-map.camY + 0.5))
        map:render()
        map.player:render()
    end
    -- end virtual resolution
    love.graphics.printf('level : '.. LEVEL, 2, 2, VIRTUAL_WIDTH)
    push:apply('end')
end
