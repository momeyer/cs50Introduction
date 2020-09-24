Player = Class{}

local WALKING_SPEED = 110

function Player:init(map, side, playerLayer)

    self.width = 16
    self.height = 16
    self.xOffset = 8
    self.yOffset = 8
    self.side = side
    self.speed = 0.6
    self.direction = 'up'
    -- reference to map for checking tiles
    self.map = map
    self.layer = self.map:addCustomLayer("Sprites", playerLayer)
    
    self.sprites = {
        ['up'] = love.graphics.newImage("graphics/player_up.png"),
        ['down'] = love.graphics.newImage("graphics/player_down.png"),
        ['right'] = love.graphics.newImage("graphics/player_right.png"),
        ['left'] = love.graphics.newImage("graphics/player_left.png"),
    }
    self.player = nil
    for k, object in pairs(self.map.objects) do
        if object.name == "Player" then
            self.player = object
            break
        end
    end

    -- Create player object
    self.sprite = self.sprites[self.side]
    
    self.layer.player = {
        sprite = sprite,
        x      = self.player.x,
        y      = self.player.y,
        ox     = self.sprite:getWidth(), 
        oy     = self.sprite:getHeight()
    }
    -- Add controls to player
    
    -- Remove unneeded object layer
    self.map:removeLayer("player")
end


function Player:flipSprite(newInstruction)
    --newInstruction will be the arrow inserted by the user in the instructions table (strait, left, right, down)
    
    -- if curDirection == UP and newInstruction == LEFT means thatsprite will face LEFT (so curDirection = LEFT) (but sprite wont move)
    -- if curDirection == UP and newInstruction == RIGHT means that sprite will face RIGHT (so curDirection = RIGHT) (but sprite wont move)
    -- if curDirection == UP and newInstruction == STRAIT means that the player will walk one step up (-y)
        --player.moveUp()
        
    -- if curDirection == DOWN and newInstruction == LEFT means thatsprite will face RIGHT (so curDirection = RIGHT) (but sprite wont move)
    -- if curDirection == DOWN and newInstruction == RIGHT means thatsprite will face LEFT (so curDirection = LEFT) (but sprite wont move)
    -- if curDirection == DOWN and newInstruction == STRAIT means that the player will walk one step DOWN (+y)
        --player.moveDown()
    -- if curDirection == RIGHT and newInstruction == LEFT means thatsprite will face UP (so curDirection = UP) (but sprite wont move)
    -- if curDirection == RIGHT and newInstruction == RIGHT means thatsprite will face DOWN (so curDirection = DOWN) (but sprite wont move)
    -- if curDirection == RIGHT and newInstruction == STRAIT means that the player will walk one step to the RIGHT (+x)
        --player.moveRight()
    -- if curDirection == LEFT and newInstruction == LEFT means thatsprite will face DOWN (so curDirection = DOWN) (but sprite wont move)
    -- if curDirection == LEFT and newInstruction == RIGHT means thatsprite will face UP (so curDirection = UP) (but sprite wont move)
    -- if curDirection == LEFT and newInstruction == STRAIT means that the player will walk one step to the LEFT (-x)
        --player.move()
end



function Player:moveLeft()
    self.player.x = self.player.x - self.speed
end

function Player:moveRight()
    self.player.x = self.player.x + self.speed
end

function Player:moveUp()
    self.player.y = self.player.y - self.speed
end

function Player:moveDown()
    self.player.y = self.player.y + self.speed
end

function Player:stop()
    self.player.y = self.player.y + 0
    self.player.x = self.player.x + 0
end

function Player:checkEndOfMap()

end

function Player:draw()
    love.graphics.draw(self.sprite, self.player.x - self.xOffset, self.player.y - self.yOffset, 0, 1, 1, self.player.ox, self.player.oy)
end
