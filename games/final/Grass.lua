Grass = Class{}

require "Util"

function Grass:init(map, world)
    self.map = map
    self.world = world
    self.world:addCollisionClass('Grass')
    
    self.numOfObjects = self.map.layers.grass.properties.numObjects
    self:getCollisionObjects()
end

function Grass:getCollisionObjects()
    for i = 1, self.numOfObjects do
        local object = getMapObject(self.map, tostring(i))
        collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
        collider:setCollisionClass('Grass')
        collider:setType('static')
    end
end