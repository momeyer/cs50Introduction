BlueTile = Class{}

require "Util"

function BlueTile:init(map, world, numOfObjects)
    self.map = map
    self.world = world
    self.world:addCollisionClass('BlueTile')

    self:getCollisionObjects(numOfObjects)
end

function BlueTile:getCollisionObjects(numOfObjects)
    for i = 1, numOfObjects do
        local name = 'blue' .. tostring(i)
        local object = getMapObject(self.map, name)
        collider = self.world:newRectangleCollider(object.x, object.y, 0.5, 0.5)
        collider:setCollisionClass('BlueTile')
        collider.name = name
        collider:setType('kinematic')
    end
end
