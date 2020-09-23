Player = Class{}

local WALKING_SPEED = 110

function Player:init(map, side, x, y, playerLayer)
    self.x = x
    self.y = y
  
    self.width = 16
    self.height = 16
    self.xOffset = 8
    self.yOffset = 8
    self.side = side
    -- reference to map for checking tiles
    self.map = map
        
    local layer = self.map:addCustomLayer("Sprites", playerLayer)
    
    self.sprites = {
        ['up'] = love.graphics.newImage("graphics/player_up.png"),
        ['down'] = love.graphics.newImage("graphics/player_down.png"),
        ['right'] = love.graphics.newImage("graphics/player_right.png"),
        ['left'] = love.graphics.newImage("graphics/player_left.png"),

    }
    local player
    for k, object in pairs(self.map.objects) do
        if object.name == "Player" then
            player = object
            break
        end
    end

    -- Create player object
    local sprite = self.sprites[self.side]
    
    layer.player = {
        sprite = sprite,
        x      = player.x,
        y      = player.y,
        ox     = sprite:getWidth(), 
        oy     = sprite:getHeight()
    }

    -- Add controls to player
    layer.update = function(self, dt)
        -- 96 pixels per second
        local speed = 96
        if love.keyboard.isDown('escape') then
            love.event.quit()
        end
        -- Move player up
        if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
            player.y = player.y - speed * dt
        end

        -- Move player down
        if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
            player.y = player.y + speed * dt
        end

        -- Move player left
        if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
            player.x = player.x - speed * dt
        end

        -- Move player right
        if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
            player.x = player.x + speed * dt
        end
    end

    layer.draw = function(self)
        love.graphics.draw(
            sprite,
            player.x - 8,
            player.y - 8,
            0,
            1,
            1,
            player.ox,
            player.oy
        )
        

    end
    -- Remove unneeded object layer
    self.map:removeLayer("player")

end

function Player:update(dt)

end

function Player:checkEndOfMap()

end

function Player:draw()
    local player = self.map.layers["Sprites"].player
    local tx = math.floor(player.x - love.graphics.getWidth())
    local ty = math.floor(player.y - love.graphics.getHeight())
    love.graphics.translate(-tx, -ty)
end
