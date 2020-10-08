BlueTile = Class{}

require "Util"

function BlueTile:init(map, world)
    self.map = map
    self.world = world
    self.world:addCollisionClass('BlueTile')
    self.numOfObjects = self.map.layers.blueTile.properties.numObjects
    self:getCollisionObjects()
end

function BlueTile:getCollisionObjects()
    for i = 1, self.numOfObjects do
        local name = 'blue' .. tostring(i)
        local object = getMapObject(self.map, name)
        collider = self.world:newRectangleCollider(object.x, object.y, 0.5, 0.5)
        collider:setCollisionClass('BlueTile')
        collider.name = name
        collider:setType('kinematic')
    end
end
