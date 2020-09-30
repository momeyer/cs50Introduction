Grass = Class{}

require "Util"

function Grass:init(map, world, numOfObjects)
    self.map = map
    self.world = world

    self:getCollisionObjects(numOfObjects)
end

function Grass:getCollisionObjects(numOfObjects)
    local objs = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}
    for i = 1, numOfObjects do
        local object = getMapObject(self.map, tostring(objs[i]))
        collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
        collider:setCollisionClass('Solid')
        collider:setType('static')
    end
end

function Grass:update(dt, endGame)

end

function Grass:draw()
end
