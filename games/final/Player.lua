Player = Class{}

require "Util"

local anim8 = require 'anim8'

local WALKING_SPEED = 110

function Player:init(map, direction, world)

    self.width = 16
    self.height = 16
    self.xOffset = 8
    self.yOffset = 8
    self.speed = 8
    self.direction = direction
    self.initialDirection = direction
    self.texture = love.graphics.newImage('graphics/playerAnim8.png')
    self.isMoving = false
    self.world = world
    self.map = map

    self.playerObject = getMapObject(self.map, 'player')
    
    self.world:addCollisionClass('Player')
    self.collider = self.world:newCircleCollider(self.playerObject.x + 8, self.playerObject.y + 8, 5)
    self.collider:setCollisionClass('Player')

    self.grids = {}
    self.grids.walk = anim8.newGrid(self.width, self.height, self.texture:getWidth(), self.texture:getHeight())

    self.animations = {}
    self.animations.walkDown = anim8.newAnimation(self.grids.walk('1-3', 2), 0.3)
    self.animations.walkRight = anim8.newAnimation(self.grids.walk('1-3', 1), 0.3)
    self.animations.walkLeft = anim8.newAnimation(self.grids.walk('1-3', 3), 0.3)
    self.animations.walkUp = anim8.newAnimation(self.grids.walk('1-3', 4), 0.1)

    self.startX = self.collider:getX()
    self.startY = self.collider:getY()

    self.directions = {
        [FACE_UP] = self.animations.walkUp,
        [FACE_RIGHT] = self.animations.walkRight,
        [FACE_LEFT] = self.animations.walkLeft,
        [FACE_DOWN] = self.animations.walkDown,    
    }

    self.anim = self.directions[self.direction]
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
    self.isMoving = true
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

function Player:move(action)
    if action == FACE_LEFT then
        self:turnLeft()
        self.isMoving = false
    elseif action == FACE_RIGHT then
        self:turnRight()
        self.isMoving = false
    elseif action == WALK then
        self:walk()
        love.timer.sleep(0.1)
        self:walk()
        love.timer.sleep(0.1)
        self:collectFruits()
    elseif action == PAINT_GREY then
        self:paintTiles(action)
    elseif action == nil then
        self.isMoving = false
    end
    self:checkIfEndOfMap()
    self:checkIfCollide()
end

function Player:findColliders(tileColor)
    local px, py = self.collider:getPosition()
    local colliders = self.world:queryRectangleArea(px - 8, py - 10, 16, 16, {tileColor})
    if #colliders > 0 then
        return colliders[1]
    else
        return false
    end
end

function Player:collectFruits()
    local px, py = self.collider:getPosition()
    local colliders = self.world:queryRectangleArea(px - 8, py - 10, 16, 16, {'Collectables'})
    if #colliders > 0 then
        print()
        self.map.layers[colliders[1].name].visible = false
        colliders[1].collected = true
        colliders[1]:destroy()
    end     
end

function Player:paintTiles(tileColor)
    local px, py = self.collider:getPosition()
    local colliders = self.world:queryRectangleArea(px - 8, py - 10, 16, 16, {'All', except = {tileColor, 'Player', 'Door', 'Collectables', 'Grass'}})
    if #colliders > 0 then
        for i = 1, #colliders do
            self.map.layers[colliders[1].name].visible = false
            colliders[1]:destroy()
        end
    else
        return false
    end
end

function Player:checkIfEndOfMap()
    local px, py = self.collider:getPosition()
    local colliders = self.world:queryRectangleArea(px - 8, py - 10, 16, 16, {'Door'})
    if #colliders > 0 then
        self.isMoving = false
        gameStages.endGame = true
    end
end

function Player:checkIfCollide()
    local px, py = self.collider:getPosition()
    local colliders = self.world:queryRectangleArea(px - 8, py - 10, 16, 16, {'Grass'})
    if #colliders > 0 then
        self.isMoving = false
    end
end

function Player:update(dt)
    if self.isMoving then
        self.anim:update(dt)
        self.world:update(dt)
    end
end

function Player:draw()
    self.anim:draw(self.texture, self.collider:getX() - 8, self.collider:getY() - 14)
end
