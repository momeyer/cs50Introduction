Grass = Class{}

require "Util"

function Grass:init(map, world, numOfObjects)
    self.map = map
    self.world = world
    self.world:addCollisionClass('Grass')
    self:getCollisionObjects(numOfObjects)
end

function Grass:getCollisionObjects(numOfObjects)
    for i = 1, numOfObjects do
        local object = getMapObject(self.map, tostring(i))
        collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
        collider:setCollisionClass('Grass')
        collider:setType('static')
    end
end