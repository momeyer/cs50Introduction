Game = Class{}

function Game:init()
    self.stages = {
        endGame = false,
        start = false,
        fail = false
}

end

function Game:reset()
    self.stages.endGame = false
    self.stages.start = false
    self.stages.fail = false
end

