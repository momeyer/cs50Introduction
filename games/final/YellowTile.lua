YellowTile = Class{}

require "Util"

function YellowTile:init(map, world, numOfObjects)
    self.map = map
    self.world = world
    self.world:addCollisionClass('YellowTile')

    self:getCollisionObjects(numOfObjects)
end

function YellowTile:getCollisionObjects(numOfObjects)
    for i = 1, numOfObjects do
        local object = getMapObject(self.map, 'yellow' .. tostring(i))
        collider = self.world:newRectangleCollider(object.x, object.y, object.width, object.height)
        collider:setCollisionClass('YellowTile')
        collider.name = 'yellow'
        collider:setType('kinematic')
    end
end

function YellowTile:update(dt, endGame)

end

function YellowTile:draw()
end
