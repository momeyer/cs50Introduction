
require 'Actions'
require 'Animation'
require 'Answer'
require 'Button'
require 'Buttons'
require 'Door'
require 'Game'
require 'Level'
require 'Menu'
require 'MenuButton'
require 'MenuButtons'
require 'Player'
require 'Tile'
require 'Tiles'

WINDOW_WIDTH = 1300
WINDOW_HEIGHT = 600

VIRTUAL_WIDTH = 590
VIRTUAL_HEIGHT = 270

RUN = 'run'

PLAYER = 'player'
GRASS = 'grass'
YELLOW_TILE = 'yellowTile'
BLUE_TILE = 'blueTile'
GREY_TILE = 'greyTile'
FRUIT = 'fruit'
DOOR = 'Door'

NORMAL = 1
PRESSED = 2

PLAY = 'play'
INSTRUCTION = 'instruction'
NEXT = 'next'

MENU_IMAGE = 'graphics/menuTiles.png'
INSTRUCTION_1_IMAGE = 'graphics/instructions1.png'
INSTRUCTION_2_IMAGE = 'graphics/instructions2.png'
THE_END_IMAGE = 'graphics/end.png'

FAIL_MESSAGE = love.graphics.newImage('graphics/failMessage.png')
SUCCESS_MESSAGE = love.graphics.newImage('graphics/successMessage.png')

FONT_LARGE = love.graphics.newFont('fonts/mini_pixel-7.ttf', 21)
FONT_SMALL = love.graphics.newFont('fonts/font.ttf', 8)


MENU = 1
INSTRUCTION1 = 2
INSTRUCTION2 = 3
THE_END = 4
