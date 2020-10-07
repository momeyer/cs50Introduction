
require 'Player'
require 'Level1'
require 'Level2'
require 'Level3'
require 'Level4'
require 'Controllers'
require 'Door'
require 'Grass'
require 'YellowTile'
require 'GreyTile'
require 'BlueTile'
require 'Actions'
require 'Collectables'
require 'Button'

WINDOW_WIDTH = 1300
WINDOW_HEIGHT = 600

VIRTUAL_WIDTH = 590
VIRTUAL_HEIGHT = 270

HOUSE = 'house'
SCHOOL = 'school'
PARK = 'park'

gameStages = {
    endGame = false,
    start = false,
    fail = false,
    level = 4
}