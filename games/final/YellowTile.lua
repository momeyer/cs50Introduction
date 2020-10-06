YellowTile = Class{}

require "Util"

function YellowTile:init(map, world, numOfObjects)
    self.map = map
    self.world = world
    self.world:addCollisionClass('YellowTile')
    self:getCollisionObjects(numOfObjects)
end

function YellowTile:getCollisionObjects(numOfObjects)
    for i = 1, numOfObjects do
        local name = 'yellow' .. tostring(i)
        local object = getMapObject(self.map, name)
        collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
        collider:setCollisionClass('YellowTile')
        collider.name = name
        collider:setType('kinematic')
    end
end