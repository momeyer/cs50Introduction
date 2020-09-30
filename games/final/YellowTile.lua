Yellow = Class{}

require "Util"

function Yellow:init(map, world)
    self.map = map
    self.world = world

    self:getCollisionObjects()
end

function Yellow:getCollisionObjects()
    local object = getMapObject(self.map, 'yellow')
    collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
    collider:setCollisionClass('Solid')
    collider:setType('static')
end

function Yellow:update(dt, endGame)

end

function Yellow:draw()
end
