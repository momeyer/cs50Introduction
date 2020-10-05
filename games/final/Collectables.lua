Collectables = Class{}

require "Util"

function Collectables:init(map, world, numOfObjects)
    self.map = map
    self.world = world
    self.world:addCollisionClass('Collectables')
    self.images = {
        [1] = love.graphics.newImage('graphics/fruit.png'),
        [2] = love.graphics.newImage('graphics/fruitCollected.png')
    }
    self.fruits = {}
    self:getCollisionObjects(numOfObjects)
end

function Collectables:getCollisionObjects(numOfObjects)
    for i = 1, numOfObjects do
        local object = getMapObject(self.map, 'fruit' .. tostring(i))
        collider = self.world:newRectangleCollider(object.x, object.y, 0.1, 0.1)
        table.insert(self.fruits, collider)
        collider.name = 'fruit'
        collider.collected = false
        collider:setCollisionClass('Collectables')
        collider:setType('kinematic')        
    end
end

function Collectables:update(dt, endGame)
    
end

function Collectables:draw()
    print(#self.fruits)
    for i = 1, #self.fruits do
        if not self.fruits[i].collected then
            x, y = self.fruits[i]:getPosition()
            love.graphics.draw(self.images[1], x - 8, y - 14)
        end
    end
end
