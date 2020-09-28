Player = Class{}

require "Util"

local anim8 = require 'anim8'

local WALKING_SPEED = 110

function Player:init(map, direction, playerLayer, world)

    self.width = 16
    self.height = 16
    self.xOffset = 8
    self.yOffset = 8
    self.speed = 16
    self.direction = direction
    self.initialDirection = direction
    self.texture = love.graphics.newImage('graphics/playerAnim8.png')
    self.isMoving = false
    self.world = world
    self.map = map

    self.playerObject = getMapObject(self.map, 'player')
    
    self.world:addCollisionClass('Player')
    self.collider = self.world:newCircleCollider(self.playerObject.x, self.playerObject.y, 4)
    self.collider:setCollisionClass('Player')

    self.grids = {}
    self.grids.walk = anim8.newGrid(self.width, self.height, self.texture:getWidth(), self.texture:getHeight())

    self.animations = {}
    self.animations.walkDown = anim8.newAnimation(self.grids.walk('1-3', 2), 0.2)
    self.animations.walkRight = anim8.newAnimation(self.grids.walk('1-3', 1), 0.2)
    self.animations.walkLeft = anim8.newAnimation(self.grids.walk('1-3', 3), 0.2)
    self.animations.walkUp = anim8.newAnimation(self.grids.walk('1-3', 4), 0.1)

    self.anim = self.animations.walkUp
end

function Player:turnLeft()
    if self.direction == FACE_UP then
        self.direction = FACE_LEFT
        self.anim = self.animations.walkLeft
    elseif self.direction == FACE_DOWN then
        self.direction = FACE_RIGHT
        self.anim = self.animations.walkRight
    elseif self.direction == FACE_LEFT then
        self.direction = FACE_DOWN
        self.anim = self.animations.walkDown
    elseif self.direction == FACE_RIGHT then
        self.direction = FACE_UP
        self.anim = self.animations.walkUp
    end
end

function Player:turnRight()
    if self.direction == FACE_UP then
        self.direction = FACE_RIGHT
        self.anim = self.animations.walkRight
    elseif self.direction == FACE_DOWN then
        self.direction = FACE_LEFT
        self.anim = self.animations.walkLeft
    elseif self.direction == FACE_LEFT then
        self.direction = FACE_UP
        self.anim = self.animations.walkUp
    elseif self.direction == FACE_RIGHT then
        self.direction = FACE_DOWN
        self.anim = self.animations.walkDown
    end
end

function Player:walk()
    local px, py = self.collider:getPosition()
    if self.direction == FACE_RIGHT then
       self.collider:setPosition(px + self.speed, py)
    elseif self.direction == FACE_UP then
       self.collider:setPosition(px, py - self.speed)
    elseif self.direction == FACE_DOWN then
        self.collider:setPosition(px, py + self.speed)
    elseif self.direction == FACE_LEFT then
        self.collider:setPosition(px - self.speed, py)
    end
end

function Player:move(movement)
    if movement == FACE_LEFT then
        self:turnLeft()
        self.isMoving = false
    elseif movement == FACE_RIGHT then
        self:turnRight()
        self.isMoving = false
    elseif movement == WALK then
        self:walk()
        self.isMoving = true
    end

end

function Player:update(dt)
    if self.isMoving then
        self.anim:update(dt)
        self.world:update(dt)
    end

    if self.collider:enter('Door') or self.collider:stay('Door') then
        self.speed = 0
        self.isMoving = false
        print("Inside")
    end
end

function Player:resetPosition()
    self.isMoving = false
    self.anim = self.animations.walkUp
    self.direction = self.initialDirection
end

function Player:draw()
    -- love.graphics.draw(self.direction[self.direction], self.x - self.xOffset, self.y - self.yOffset, 0, 1, 1)
    self.anim:draw(self.texture, self.collider:getX() - self.xOffset,self.collider:getY() - self.yOffset)
    love.graphics.setColor(0, 0, 0, 0.7)
end
