GreyTile = Class{}

require "Util"

function GreyTile:init(map, world)
    self.map = map
    self.world = world
    self.world:addCollisionClass('GreyTile')

    self.numOfObjects = self.map.layers.greyTile.properties.numObjects
    self:getCollisionObjects()
end

function GreyTile:getCollisionObjects()
    for i = 1, self.numOfObjects do
        local object = getMapObject(self.map, 'grey' .. tostring(i))
        collider = self.world:newRectangleCollider(object.x, object.y, 0.5, 0.5)
        collider:setCollisionClass('GreyTile')
        collider:setType('kinematic')
        
    end
end

function GreyTile:update(dt, endGame)

end

function GreyTile:draw()
end
