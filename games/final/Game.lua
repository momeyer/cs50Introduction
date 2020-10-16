Game = Class{}

function Game:init(mapProperties)
    self.stages = {
        menu = false,
        instruction = nil,
        endGame = false,
        start = false,
        fail = false,
        fruitsTotal = mapProperties.fruitsTotal
}
end

function Game:reset()
    self.stages.endGame = false
    self.stages.start = false
    self.stages.fail = false
end

function Game:fail(player)
    self.stages.fail = true
    player.isMoving = false
end

function Game:endGame(player)
    self.stages.endGame = true
    player.isMoving = false
end

