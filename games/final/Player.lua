Player = Class{}

local WALKING_SPEED = 110

function Player:init(map, side, playerLayer)

    self.width = 16
    self.height = 16
    self.xOffset = 8
    self.yOffset = 8
    self.side = side
    self.speed = 16
    self.initialSide = side

    self.direction = {
        [FACE_UP] = love.graphics.newImage("graphics/player_up.png"),
        [FACE_DOWN] = love.graphics.newImage("graphics/player_down.png"),
        [FACE_RIGHT] = love.graphics.newImage("graphics/player_right.png"),
        [FACE_LEFT] = love.graphics.newImage("graphics/player_left.png"),
    }

    -- reference to map for checking tiles
    self.map = map
    self.layer = self.map:addCustomLayer("Sprites", playerLayer)
   
    self.player = nil
    for k, object in pairs(self.map.objects) do
        if object.name == "Player" then
            self.player = object
            break
        end
    end

    -- Create player object
    self.sprite = self.direction[self.side]
    
    self.layer.player = {
        x      = self.player.x,
        y      = self.player.y,
        ox     = self.sprite:getWidth(), 
        oy     = self.sprite:getHeight()
    }
    -- Add controls to player
    
    -- Remove unneeded object layer
    self.map:removeLayer("player")


    self.startX = self.player.x
    self.startY = self.player.y


    self.moves = {
        [FACE_LEFT] = function()
            if self.side == FACE_UP then
                self.side = FACE_LEFT
            elseif self.side == FACE_DOWN then
                self.side = FACE_RIGHT
            elseif self.side == FACE_LEFT then
                self.side = FACE_DOWN
            elseif self.side == FACE_RIGHT then
                self.side = FACE_UP
            end
        end,
        [FACE_RIGHT] = function()
            if self.side == FACE_UP then
                self.side = FACE_RIGHT
            elseif self.side == FACE_DOWN then
                self.side = FACE_LEFT
            elseif self.side == FACE_LEFT then
                self.side = FACE_UP
            elseif self.side == FACE_RIGHT then
                self.side = FACE_DOWN
            end
        end,
        [WALK] = function()
            if self.side == FACE_RIGHT then
                self.player.x = self.player.x + self.speed
            elseif self.side == FACE_UP then
                self.player.y = self.player.y - self.speed
            elseif self.side == FACE_DOWN then
                self.player.y = self.player.y + self.speed
            elseif self.side == FACE_LEFT then
                self.player.x = self.player.x - self.speed
            end
        end
    }
end

function Player:move(movement)
    self.moves[movement]()
    print('player -- ' .. movement)
end

function Player:resetPosition()
    self.player.x = self.startX
    self.player.y = self.startY
    self.side = self.initialSide
end


function Player:checkEndOfMap()

end

function Player:draw()
    love.graphics.draw(self.direction[self.side], self.player.x - self.xOffset, self.player.y - self.yOffset, 0, 1, 1, self.player.ox, self.player.oy)
end
