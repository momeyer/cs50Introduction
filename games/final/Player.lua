Player = Class{}

local WALKING_SPEED = 110
function Player:init(map, x, y)
    
    self.x = x
    self.y = y
    self.width = 16
    self.height = 16
  
    self.xOffset = 8
    self.yOffset = 8
    -- reference to map for checking tiles
    self.map = map
    self.texture = love.graphics.newImage('graphics/player.png')
    self.state = 'idle'

    self.animations = {
        ['idle'] = Animation({
            texture = self.texture,
            frames = {
                love.graphics.newQuad(32, 0, 16, 16, self.texture:getDimensions())
            }
        }),
        ['walking'] = Animation({
            texture = self.texture,
            frames = {
                love.graphics.newQuad(32, 16, 16, 16, self.texture:getDimensions()),
                love.graphics.newQuad(32, 32, 16, 16, self.texture:getDimensions())
            },
            interval = 0.15
        }),
    }

    -- initialize animation and current frame we should render
    self.animation = self.animations['idle']
    self.currentFrame = self.animation:getCurrentFrame()

    -- behavior map we can call based on player state
    self.behaviors = {
        ['idle'] = function(dt)

        end,
        ['walking'] = function(dt)
        end,
    }
end

function Player:update(dt)
    self.behaviors[self.state](dt)
    self.animation:update(dt)
    self.currentFrame = self.animation:getCurrentFrame()
end

function Player:checkEndOfMap()

end

function Player:render()
        love.graphics.draw(self.texture, self.currentFrame, math.floor(self.x + self.xOffset),
        math.floor(self.y + self.yOffset), 0, scaleX, 1, self.xOffset, self.yOffset)
end
