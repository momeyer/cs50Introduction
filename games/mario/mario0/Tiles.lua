Tiles = Class{}

function Tiles:init()
    self.brick = 1
    self.empty = -1

    -- cloud tiles
    self.cloudLeft = 6
    self.cloudRight = 7

    -- bush tiles
    self.bushLeft = 2
    self.bushRight = 3

    -- mushroom tiles
    self.columnTop = 10
    self.columnBottom = 11

    self.poleTop = 8
    self.poleMiddle = 12
    self.poleBottom = 16

    self.flag = 13
    -- jump block
    self.jumpBlock = 5
    self.jumpBlockHit = 9
end
