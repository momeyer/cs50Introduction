GreyTile = Class{}

require "Util"

function GreyTile:init(map, world, numOfObjects)
    self.map = map
    self.world = world
    self.world:addCollisionClass('GreyTile')

    self:getCollisionObjects(numOfObjects)
end

function GreyTile:getCollisionObjects(numOfObjects)
    for i = 1, numOfObjects do
        local object = getMapObject(self.map, 'grey' .. tostring(i))
        collider = self.world:newRectangleCollider(object.x, object.y, 0.5, 0.5)
        collider.name = 'grey'
        collider:setCollisionClass('GreyTile')
        collider:setType('kinematic')
        
    end
end

function GreyTile:update(dt, endGame)

end

function GreyTile:draw()
end
