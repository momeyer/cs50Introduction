Game = Class{}

function Game:init(mapProperties)


    Stage = {
        MENU = 1,
        FIRST_INSTRUCTION = 2,
        SECOND_INSTRUCTION = 3,
        START = 4,
        ENDGAME = 5,
        FAIL = 6,
    }

    self.stageNew = Stage.MENU

    self.stages = {
        menu = false,
        instruction = nil,
        endGame = false,
        start = false,
        fail = false,
        fruitsTotal = mapProperties.fruitsTotal
    }
end

function Game:fail(player)
    self.stages.fail = true
    player.isMoving = false
end

function Game:isFailed()
    return self.stages.fail
end


function Game:isMenu()
    return self.stages.menu
end

function Game:setMenuStage()
    self.stages.menu = true
end

function Game:isInstruction()
    return self.stages.instruction ~= nil
end

function Game:advanceInstruction()

end

function Game:start(player)
    self.stages.start = true
    self.stageNew = Stages.START
end

function Game:isRunning()
    return self.stages.start and not self:isFailed() and not self:isFinished()
end 

function Game:endGame(player)
    self.stages.endGame = true
    player.isMoving = false
end

function Game:isFinished()
    return self.stages.endGame
end

function Game:getFruit()
    local toCollect = self.stages.fruitsTotal
    self.stages.fruitsTotal = self.stages.fruitsTotal - 1
    return toCollect
end

function Game:collectedAllFruits()
    return self.stages.fruitsTotal == 0
end

