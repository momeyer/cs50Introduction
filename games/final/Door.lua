Door = Class{}

require "Util"

function Door:init(map, world)
    self.map = map
    self.world = world
    local mapObject = getMapObject(self.map, "end")
    self.x = mapObject.x
    self.y = mapObject.y
    self.height = 16
    self. width = 16
    self.states = {
                    [1] = love.graphics.newImage('graphics/door1.png'),
                    [2] = love.graphics.newImage('graphics/door2.png')
                }
    self.collider = self.world:newRectangleCollider(self.x, self.y, self.width, self.height + 2)
    self.collider:setCollisionClass('Door')
    self.collider:setType('static')
    
    self.curState = 2
end

function Door:update(dt, endGame)
    if endGame then
        self.curState = 1
    end
end

function Door:draw()
    love.graphics.draw(self.states[self.curState], self.x, self.y)
end
