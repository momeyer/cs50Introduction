--[[
    Contains tile data and necessary code for rendering a tile map to the
    screen.
]]

require 'Util'
require 'Tiles'

Map = Class{}

-- a speed to multiply delta time to scroll map; smooth value
local SCROLL_SPEED = 62

-- constructor for our map object
function Map:init()

    self.tileSet = Tiles()
    self.tileSet:init()
    self.spritesheet = love.graphics.newImage('graphics/spritesheet2.png')
    self.sprites = generateQuads(self.spritesheet, 16, 16)
    self.music = love.audio.newSource('sounds/music.wav', 'static')

    self.tileWidth = 16
    self.tileHeight = 16
    self.mapWidth = 28 + (LEVEL * 2) 
    self.mapHeight = 28
    self.endMap = self.mapWidth - 3
    self.middleMap = self.mapHeight / 2
    self.tiles = {}
    self.state = 'wind'
    -- applies positive Y influence on anything affected
    self.gravity = 15

    -- associate player with map
    self.player = Player(self)

    -- camera offsets
    self.camX = 0
    self.camY = -3

    -- cache width and height of map in pixels
    self.mapWidthPixels = self.mapWidth * self.tileWidth
    self.mapHeightPixels = self.mapHeight * self.tileHeight

    -- first, fill map with empty tiles
    for y = 1, self.mapHeight do
        for x = 1, self.mapWidth do
            -- support for multiple sheets per tile; storing tiles as tables 
            self:setTile(x, y, self.tileSet.empty)
        end
    end

    -- begin generating the terrain using vertical scan lines
    local x = 1
    while x < self.mapWidth do
        
        self:drawClouds(x)
 
        if x >= self.mapWidth - 10 then
            self:drawStairs(x, y)
            self:drawFlag(x, y)
            x = x + 1

        elseif math.random(20) == 1 then
            -- left side of pipe
            self:drawColumn(x, y)
            x = x + 1
        
        elseif math.random(10) == 1 then
            self:drawBush(x, y)
            x = x + 2
        -- 10% chance to not generate anything, creating a gap
        elseif math.random(10) ~= 1 then
            -- creates column of tiles going to bottom of map
            self:drawGround(x, y)
            self:drawJumpBlock(x)
            -- next vertical scan line
            x = x + 1
        else
            -- increment X so we skip two scanlines, creating a 2-tile gap
            --unless it is the tile where the Player starts.
            if x > 2 then
                x = x + 2
            end
        end
    end

    self.animations = {
        ['wind'] = Animation {
            texture = self.spritesheet,
            frames =  {
                self.sprites[13], self.sprites[14], self.sprites[15]
            },
            interval = 0.30
        }
    }

    self.animation = self.animations['wind']

    self.behavior = {
        ['wind'] = function(dt)
        end
    }
    -- start the background music
    self.music:setLooping(true)
    self.music:play()
end

function Map:drawClouds(x)
    if x < self.mapWidth - 2 then
        if math.random(10) == 1 then
            -- choose a random vertical spot above where blocks/pipes generate
            local cloudStart = math.random(self.middleMap - 6)
            self:setTile(x, cloudStart, self.tileSet.cloudLeft)
            self:setTile(x + 1, cloudStart, self.tileSet.cloudRight)
            x = x + 1
        end
    end
    
end

function Map:drawColumn(x, y)
    self:setTile(x, self.middleMap - 2, self.tileSet.columnTop)
    self:setTile(x, self.middleMap - 1, self.tileSet.columnBottom)
    -- creates column of tiles going to bottom of map
    self:drawGround(x, y)
    -- next vertical scan line
end

function Map:drawBush(x, y)
    local bushLevel = self.middleMap - 1
    -- place bush component and then column of bricks
    self:setTile(x, bushLevel, self.tileSet.bushLeft)
    self:drawGround(x, y)
    x = x + 1
    self:setTile(x, bushLevel, self.tileSet.bushRight)
    self:drawGround(x, y)
end

function Map:drawStairs(x, y)
    height = 4
    numTiles =  1
    
    for x = self.mapWidth - 10, self.mapWidth - 7 do
        for i = 0, numTiles do
            self:setTile(x, self.middleMap - i, self.tileSet.brick)
            self:drawGround(x, y)
        end
        numTiles = numTiles + 1
    end    
    
    -- creates column of tiles going to bottom of map
    -- next vertical scan line
end

function Map:drawFlag(x, y)
    if x == self.endMap then
        pole = {self.tileSet.poleBottom, self.tileSet.poleMiddle, self.tileSet.poleMiddle, self.tileSet.poleMiddle, self.tileSet.poleTop}
        for i = 1, 5 do
            self:setTile(x, self.middleMap - i, pole[i])
        end
    end
    self:drawGround(x, y)
end

function Map:drawJumpBlock(x)
    if math.random(15) == 1 then
        self:setTile(x, self.middleMap - 4, self.tileSet.jumpBlock)
    end
end

function Map:drawGround(x, y)
    for y = self.middleMap, self.mapHeight do
        self:setTile(x, y, self.tileSet.brick)
    end
end
-- return whether a given tile is collidable
function Map:collides(tile)
    -- define our collidable tiles
    local collidables = {
        self.tileSet.brick, self.tileSet.jumpBlock, self.tileSet.jumpBlockHit,
        self.tileSet.columnBottom, self.tileSet.columnTop
    }

    -- iterate and return true if our tile type matches
    for _, v in ipairs(collidables) do
        if tile.id == v then
            return true
        end
    end

    return false
end

-- function to update camera offset with delta time
function Map:update(dt)
    self.player:update(dt)
    self.behavior[self.state](dt)
    -- keep camera's X coordinate following the player, preventing camera from
    -- scrolling past 0 to the left and the map's width
    self.camX = math.max(0, math.min(self.player.x - VIRTUAL_WIDTH / 2, math.min(self.mapWidthPixels - VIRTUAL_WIDTH, self.player.x)))
    
    self.animation:update(dt)
end

-- gets the tile type at a given pixel coordinate
function Map:tileAt(x, y)
    return {
        x = math.floor(x / self.tileWidth) + 1,
        y = math.floor(y / self.tileHeight) + 1,
        id = self:getTile(math.floor(x / self.tileWidth) + 1, math.floor(y / self.tileHeight) + 1)
    }
end

-- returns an integer value for the tile at a given x-y coordinate
function Map:getTile(x, y)
    return self.tiles[(y - 1) * self.mapWidth + x]
end

-- sets a tile at a given x-y coordinate to an integer value
function Map:setTile(x, y, id)
    self.tiles[(y - 1) * self.mapWidth + x] = id
end

-- renders our map to the screen, to be called by main's render
function Map:render()
    for y = 1, self.mapHeight do
        for x = 1, self.mapWidth do
            local tile = self:getTile(x, y)
            if tile ~= self.tileSet.empty then
                love.graphics.draw(self.spritesheet, self.sprites[tile], (x - 1) * self.tileWidth, (y - 1) * self.tileHeight)
                love.graphics.draw(self.spritesheet, self.animation:getCurrentFrame(), self.mapWidthPixels - 48, (self.mapHeightPixels / 2) - 94)
            end
        end
    end
end
