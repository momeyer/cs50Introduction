Class = require 'class'
push = require 'push'
local sti = require "sti"

player = require 'Player'

WINDOW_WIDTH = 900
WINDOW_HEIGHT = 500

VIRTUAL_WIDTH = 450
VIRTUAL_HEIGHT = 250

PADDLE_SPEED = 200

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    font = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    love.graphics.setFont(font)
    map = sti("maps/three.lua")
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true
    })

end

function love.resize(w, h)
    push:resize(w, h)
end

function love.update(dt)
    -- Update world
    map:update(dt)
end

function drawLevelOne()
    love.graphics.printf('Help Tonny get to his school..', 70, 70, VIRTUAL_WIDTH, 'center')
end

function love.draw()
    love.graphics.clear(56/255,203/255,171/255, 255/255)
    push:apply('start')
    -- Draw world
    map:draw()
    love.graphics.draw(fish)
    push:apply('end')
end