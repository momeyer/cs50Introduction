
require 'Player'
require 'Level'
require 'Classes'

require 'Level1'
require 'Level2'
require 'Level3'
require 'Level4'
require 'Buttons'
require 'Door'
require 'Grass'
require 'YellowTile'
require 'GreyTile'
require 'BlueTile'
require 'Actions'
require 'Collectables'
require 'Button'
require 'Answer'
require 'Game'

WINDOW_WIDTH = 1300
WINDOW_HEIGHT = 600

VIRTUAL_WIDTH = 590
VIRTUAL_HEIGHT = 270

HOUSE = 'house'
SCHOOL = 'school'
PARK = 'park'

RUN = 'run'

FONT_LARGE = love.graphics.newFont('fonts/mini_pixel-7.ttf', 20)
FONT_SMALL = love.graphics.newFont('fonts/font.ttf', 8)

images = {
        [FACE_RIGHT] = love.graphics.newImage('graphics/turn_right.png'),
        [FACE_LEFT] = love.graphics.newImage('graphics/turn_left.png'),
        [WALK] = love.graphics.newImage('graphics/walk.png'),
        [F0] = love.graphics.newImage('graphics/F0.png'),
        [CONDITIONAL_GREY] = love.graphics.newImage('graphics/greyTile.png'),
        [CONDITIONAL_RED] = love.graphics.newImage('graphics/red.png'),
        [CONDITIONAL_YELLOW] = love.graphics.newImage('graphics/yellow.png'),
        [CONDITIONAL_BLUE] = love.graphics.newImage('graphics/blue.png'),
        [PAINT_GREY] = love.graphics.newImage('graphics/paint_grey.png'),
        [PAINT_RED] = love.graphics.newImage('graphics/paint_red.png'),
        [PAINT_YELLOW] = love.graphics.newImage('graphics/paint_yellow.png'),
        [PAINT_BLUE] = love.graphics.newImage('graphics/paint_blue.png'),
        [RUN] = love.graphics.newImage('graphics/run.png'),
        }