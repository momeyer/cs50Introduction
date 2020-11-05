Game = Class{}

local SINGLE_PLAYER = 1
local TWO_PLAYERS = 2

function Game:init()
	self.States = {
		MENU = 1,
        PLAY = 2,
        DONE = 3,
        SERVE = 4,
        LEVEL = 5,
	}

	self.Type = {1, 2}

	self.Level = {
		EASY = 1,
		HARD = 2,
	}

	self.gameState = self.States.MENU
	self.gameType = self.Type.SINGLE_PLAYER
	self.gameLevel = self.Level.EASY
end

function Game:isMenu()
	return self.gameState == self.States.MENU
end

function Game:isPlay()
	return self.gameState == self.States.PLAY
end

function Game:isDone()
	return self.gameState == self.States.DONE
end

function Game:isServe()
	return self.gameState == self.States.SERVE
end

function Game:isLevel()
	return self.gameState == self.States.LEVEL
end

function Game:isSinglePlayer()
	return self.gameType == self.Type.SINGLE_PLAYER
end

function Game:isLevelEasy()
	return self.gameLevel == self.Level.EASY
end

function Game:setNumPlayers(Key)

end

function Game:setLevel(key)
	 if key == self.Level.EASY then
		self.gameLevel = self.Level.EASY
		self.gameState = self.States.SERVE
	elseif key == self.Level.HARD then
		self.gameLevel = 2
		self.gameState = self.States.SERVE
	end
end
