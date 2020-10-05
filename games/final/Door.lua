Door = Class{}

require "Util"

function Door:init(map, world, doorType)
    self.map = map
    self.world = world
    self.doorType = doorType
    local mapObject = getMapObject(self.map, "end")
    self.x = mapObject.x
    self.y = mapObject.y
    self.height = mapObject.height
    self. width = mapObject.width
    self.states = {
        [HOUSE] = {
                    [1] = love.graphics.newImage('graphics/house1.png'),
                    [2] = love.graphics.newImage('graphics/house2.png')
                },
        [PARK] = {
                    [1] = love.graphics.newImage('graphics/park.png'),
                    [2] = love.graphics.newImage('graphics/park.png')
                },
        [SCHOOL] = {
                    [1] = love.graphics.newImage('graphics/school1.png'),
                    [2] = love.graphics.newImage('graphics/school2.png')
                },
                }
    self.world:addCollisionClass('Door')
    self.collider = self.world:newRectangleCollider(self.x, self.y, self.width, self.height)
    self.collider:setCollisionClass('Door')
    self.collider:setType('static')
    
    self.curState = 1
end

function Door:update(dt, endGame)
    if endGame then
        self.curState = 2
    end
end

function Door:draw()
    love.graphics.draw(self.states[self.doorType][self.curState], self.x, self.y)
end
