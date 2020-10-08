Collectables = Class{}

require "Util"

function Collectables:init(map, world)
    self.map = map
    self.world = world
    self.world:addCollisionClass('Collectables')
    self.numOfObjects = self.map.layers.collectable.properties.numObjects
    self:getCollisionObjects()
end

function Collectables:getCollisionObjects()
    for i = 1, self.numOfObjects do
        local name = 'fruit' .. tostring(i)
        local object = getMapObject(self.map, name)
        collider = self.world:newRectangleCollider(object.x, object.y, 0.1, 0.1)
        collider.collected = false
        collider.name = name
        collider:setCollisionClass('Collectables')
        collider:setType('kinematic')        
    end
end