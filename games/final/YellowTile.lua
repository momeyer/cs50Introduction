YellowTile = Class{}

require "Util"

function YellowTile:init(map, world)
    self.map = map
    self.world = world
    self.world:addCollisionClass('YellowTile')
    self.numOfObjects = self.map.layers.yellowTile.properties.numObjects
    self:getCollisionObjects()
end

function YellowTile:getCollisionObjects()
    for i = 1, self.numOfObjects do
        local name = 'yellow' .. tostring(i)
        local object = getMapObject(self.map, name)
        collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
        collider:setCollisionClass('YellowTile')
        collider.name = name
        collider:setType('kinematic')
    end
end