Controllers = Class{}

function Controllers:init()
    self.buttons = {
        ['right'] = love.graphics.newImage('graphics/right.png'),
        ['left'] = love.graphics.newImage('graphics/left.png'),
        ['up'] = love.graphics.newImage('graphics/up.png'),
        ['down'] = love.graphics.newImage('graphics/down.png'),
        ['musicON'] = love.graphics.newImage('graphics/ON.png'),
        ['musicOFF'] = love.graphics.newImage('graphics/OFF.png'),
        ['reset'] = love.graphics.newImage('graphics/reset.png'),
        ['run'] = love.graphics.newImage('graphics/run.png')
    }
end
