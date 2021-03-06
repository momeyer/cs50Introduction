--[[
    Represents our player in the game, with its own sprite.
]]

Player = Class{}

local WALKING_SPEED = 110
local JUMP_VELOCITY = 250

function Player:init(map)
    
    self.x = 0
    self.y = 0
    self.width = 16
    self.height = 20
    self.coins = 0

    -- offset from top left to center to support sprite flipping
    self.xOffset = 8
    self.yOffset = 10
    -- reference to map for checking tiles
    self.map = map
    self.texture = love.graphics.newImage('graphics/blue_alien.png')

    -- sound effects
    self.sounds = {
        ['jump'] = love.audio.newSource('sounds/jump.wav', 'static'),
        ['hit'] = love.audio.newSource('sounds/hit.wav', 'static'),
        ['coin'] = love.audio.newSource('sounds/coin.wav', 'static'),
        ['death'] = love.audio.newSource('sounds/GameOver.wav', 'static'),
        ['end'] = love.audio.newSource('sounds/round_end.wav', 'static')
    }

    -- animation frames
    self.frames = {}

    -- current animation frame
    self.currentFrame = nil

    -- used to determine behavior and animations
    self.state = IDLE

    -- determines sprite flipping
    self.direction = 'left'

    -- x and y velocity
    self.dx = 0
    self.dy = 0

    self.startX = self.map.tileWidth
    self.startY = self.map.tileHeight * ((self.map.mapHeight - 2) / 2) - self.height
    
    -- position on top of map tiles
    self.y = self.startY
    self.x = self.startX
    -- initialize all player animations
    self.animations = {
        [IDLE] = Animation({
            texture = self.texture,
            frames = {
                love.graphics.newQuad(0, 0, 16, 20, self.texture:getDimensions())
            }
        }),
        [WALKING] = Animation({
            texture = self.texture,
            frames = {
                love.graphics.newQuad(128, 0, 16, 20, self.texture:getDimensions()),
                love.graphics.newQuad(144, 0, 16, 20, self.texture:getDimensions()),
                love.graphics.newQuad(160, 0, 16, 20, self.texture:getDimensions()),
                love.graphics.newQuad(144, 0, 16, 20, self.texture:getDimensions()),
            },
            interval = 0.15
        }),
        [JUMPING] = Animation({
            texture = self.texture,
            frames = {
                love.graphics.newQuad(32, 0, 16, 20, self.texture:getDimensions())
            }
        })
    }

    -- initialize animation and current frame we should render
    self.animation = self.animations[IDLE]
    self.currentFrame = self.animation:getCurrentFrame()

    -- behavior map we can call based on player state
    self.behaviors = {
        [IDLE] = function(dt)
            
            -- add spacebar functionality to trigger jump state
            if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('space') then
                self.dy = -JUMP_VELOCITY
                self.state = JUMPING
                self.animation = self.animations[JUMPING]
                self.sounds['jump']:play()
            elseif love.keyboard.isDown('left') then
                self.direction = 'left'
                self.dx = -WALKING_SPEED
                self.state = WALKING
                self.animations[WALKING]:restart()
                self.animation = self.animations[WALKING]
            elseif love.keyboard.isDown('right') then
                self.direction = 'right'
                self.dx = WALKING_SPEED
                self.state = WALKING
                self.animations[WALKING]:restart()
                self.animation = self.animations[WALKING]
            else
                self.dx = 0
            end
        end,
        [WALKING] = function(dt)
            -- keep track of input to switch movement while walking, or reset
            -- to idle if we're not moving
            if love.keyboard.wasPressed('space') or love.keyboard.wasPressed('up')then
                self.dy = -JUMP_VELOCITY
                self.state = JUMPING
                self.animation = self.animations[JUMPING]
                self.sounds['jump']:play()
            elseif love.keyboard.isDown('left') then
                self.direction = 'left'
                self.dx = -WALKING_SPEED
            elseif love.keyboard.isDown('right') then
                self.direction = 'right'
                self.dx = WALKING_SPEED
            else
                self.dx = 0
                self.state = IDLE
                self.animation = self.animations[IDLE]
            end

            -- check for collisions moving left and right
            self:checkRightCollision()
            self:checkLeftCollision()
            self:checkEndOfMap()
            -- check if there's a tile directly beneath us
            if not self.map:collides(self.map:tileAt(self.x, self.y + self.height)) and
                not self.map:collides(self.map:tileAt(self.x + self.width - 1, self.y + self.height)) then
                -- if so, reset velocity and position and change state
                self.state = JUMPING
                self.animation = self.animations[JUMPING]
            end
         
        end,
        [JUMPING] = function(dt)
            -- break if we go below the surface
            if self.y > 300 then
                self.sounds['death']:play()
                love.timer.sleep(0.5)
                self.y = self.startY
                self.x = self.startX
                LIFE = LIFE - 1
                return
            end

            if love.keyboard.isDown('left') then
                self.direction = 'left'
                self.dx = -WALKING_SPEED
            elseif love.keyboard.isDown('right') then
                self.direction = 'right'
                self.dx = WALKING_SPEED
            end

            -- apply map's gravity before y velocity
            self.dy = self.dy + self.map.gravity

            -- check if there's a tile directly beneath us
            if self.map:collides(self.map:tileAt(self.x, self.y + self.height)) or
                self.map:collides(self.map:tileAt(self.x + self.width - 1, self.y + self.height)) then
                
                -- if so, reset velocity and position and change state
                self.dy = 0
                self.state = IDLE
                self.animation = self.animations[IDLE]
                self.y = (self.map:tileAt(self.x, self.y + self.height).y - 1) * self.map.tileHeight - self.height
            end

            -- check for collisions moving left and right
            self:checkRightCollision()
            self:checkLeftCollision()
        end
    }
end

function Player:update(dt)
    self.behaviors[self.state](dt)
    self.animation:update(dt)
    self.currentFrame = self.animation:getCurrentFrame()
    self.x = math.max(0, self.x + self.dx * dt)
    self:calculateJumps()
    -- apply velocity
    self.y = self.y + self.dy * dt
end

-- jumping and block hitting logic
function Player:calculateJumps()
    
    -- if we have negative y velocity (jumping), check if we collide
    -- with any blocks above us
    if self.dy < 0 then
        if self.map:tileAt(self.x, self.y).id == self.map.tileSet.jumpBlock or self.map:tileAt(self.x, self.y).id == self.map.tileSet.jumpBlockHit or
            self.map:tileAt(self.x + self.width - 1, self.y).id == self.map.tileSet.jumpBlockHit or self.map:tileAt(self.x + self.width - 1, self.y).id == self.map.tileSet.jumpBlock then
            -- reset y velocity
            self.dy = 0

            -- change block to different block
            local playCoin = false
            local playHit = false
            if self.map:tileAt(self.x, self.y).id == self.map.tileSet.jumpBlock then
                self.map:setTile(math.floor(self.x / self.map.tileWidth) + 1,
                    math.floor(self.y / self.map.tileHeight) + 1, self.map.tileSet.jumpBlockHit)
                playCoin = true
            else
                playHit = true
            end
            if self.map:tileAt(self.x + self.width - 1, self.y).id == self.map.tileSet.jumpBlock then
                self.map:setTile(math.floor((self.x + self.width - 1) / self.map.tileWidth) + 1,
                    math.floor(self.y / self.map.tileHeight) + 1, self.map.tileSet.jumpBlockHit)
                playCoin = true
            else
                playHit = true
            end

            if playCoin then
                self.sounds['coin']:play()
            elseif playHit then
                self.sounds['hit']:play()
            end
        end
    end
end

function Player:checkEndOfMap()
    if self.x >= self.map.mapWidthPixels - 48 then
        LEVEL = LEVEL + 1
        self.sounds['end']:play()
        reset()
    end
end

-- checks two tiles to our left to see if a collision occurred
function Player:checkLeftCollision()
    if self.dx < 0 then
        -- check if there's a tile directly beneath us
        if self.map:collides(self.map:tileAt(self.x - 1, self.y)) or
            self.map:collides(self.map:tileAt(self.x - 1, self.y + self.height - 1)) then
            
            -- if so, reset velocity and position and change state
            self.dx = 0
            self.x = self.map:tileAt(self.x - 1, self.y).x * self.map.tileWidth
        end
    end
end

-- checks two tiles to our right to see if a collision occurred
function Player:checkRightCollision()
    if self.dx > 0 then
        -- check if there's a tile directly beneath us
        if self.map:collides(self.map:tileAt(self.x + self.width, self.y)) or self.map:collides(self.map:tileAt(self.x + self.width, self.y + self.height - 1)) then
            
            -- if so, reset velocity and position and change state
            self.dx = 0
            self.x = (self.map:tileAt(self.x + self.width, self.y).x - 1) * self.map.tileWidth - self.width
        end
    end
end

function Player:gameOver(xPosition)
    if LIFE == 0 then
        STARTED = false
        LIFE = 5
    else
        offsetHeart = self.map.tileWidth
        for heart = 1, LIFE do
            love.graphics.draw(self.map.tileSet.life, math.floor(xPosition + offsetHeart), 20)
            offsetHeart = offsetHeart + self.map.tileWidth
            heart = heart + 1
        end
    end

end

function Player:render()
    local scaleX

    -- set negative x scale factor if facing left, which will flip the sprite
    -- when applied
    if self.direction == 'right' then
        scaleX = 1
    else
        scaleX = -1
    end
    -- draw sprite with scale factor and offsets
    love.graphics.draw(self.texture, self.currentFrame, math.floor(self.x + self.xOffset),
        math.floor(self.y + self.yOffset), 0, scaleX, 1, self.xOffset, self.yOffset)
end
