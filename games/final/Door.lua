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

    self.world:addCollisionClass(DOOR)
    self.collider = self.world:newRectangleCollider(self.x, self.y, self.width, self.height)
    self.collider:setCollisionClass(DOOR)
    self.collider:setType('static')

end

function Door:update(dt, endGame)
    if endGame then
        self.map.layers.close_door.visible = true
    end
end
