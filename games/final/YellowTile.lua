YellowTile = Class{}

require "Util"

function YellowTile:init(map, world)
    self.map = map
    self.world = world
    self.world:addCollisionClass('YellowTile')
    
    self:addCollisionObjects()
end

function YellowTile:addCollisionObjects()
    local object = getMapObject(self.map, 'yellow')
    collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
    collider:setCollisionClass('YellowTile')
    collider:setType('kinematic')
end

function YellowTile:update(dt, endGame)

end

function YellowTile:draw()
end
