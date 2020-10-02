Movement = Class{}

FACE_LEFT = 'left'
FACE_DOWN = 'down'
FACE_RIGHT = 'right'
FACE_UP = 'up'

F0 = 'f0'
WALK = 'walk'
CONDITIONAL_GREY = 'GreyTile'
CONDITIONAL_BLUE = 'BlueTile'
CONDITIONAL_RED = 'RedTile'
CONDITIONAL_YELLOW = 'YellowTile'

function Movement:init()
    self.movement = nil
    self.condition = nil

    self.movements = {FACE_LEFT, FACE_RIGHT, WALK, F0}
    self.conditions =  {CONDITIONAL_GREY, CONDITIONAL_BLUE, CONDITIONAL_RED, CONDITIONAL_YELLOW}
end