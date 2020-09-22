Class = require 'class'
push = require 'push'
sti = require "sti"

require 'Animation'
require 'Util'
require 'Player'
require 'Level1'
require 'Controllers'

WINDOW_WIDTH = 900
WINDOW_HEIGHT = 500

VIRTUAL_WIDTH = 490
VIRTUAL_HEIGHT = 270

love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- Load map file
    title = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
    small = love.graphics.newFont('fonts/font.ttf', 8)
    
    controller = Controllers()
    level = Level1(controller, title, small)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end


function love.update(dt)
    level:update(dt)
end

function love.draw()
    love.graphics.clear(56/255,203/255,171/255, 255/255)
    push:apply('start')
    -- Draw world
    level:render()
    push:apply('end')
end