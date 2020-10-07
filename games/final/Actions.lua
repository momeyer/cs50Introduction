Actions = Class{}

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
PAINT_GREY = 'paint grey'
PAINT_RED = 'paint red'
PAINT_BLUE = 'paint blue'
PAINT_YELLOW = 'paint yellow'

function Actions:init()
    self.Action = nil
    self.condition = nil

    self.actions = {FACE_LEFT, FACE_RIGHT, WALK, F0, PAINT_GREY}
    self.conditions =  {CONDITIONAL_GREY, CONDITIONAL_BLUE, CONDITIONAL_RED, CONDITIONAL_YELLOW}
end