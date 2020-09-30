Level3 = Class{}

local windfield = require("windfield")
    
require "Util"

function Level3:init(controler)

    self.map = sti("maps/three.lua")
    
    self.world = windfield.newWorld()
    self.world:setQueryDebugDrawing(true)
    self.world:addCollisionClass('Door')
    self.world:addCollisionClass('Solid')
    
    self.player = Player(self.map, FACE_UP, self.world)
    self.control = controler
    self.text = 'Help Tony to get home'
    self.numberOfCommands = 15
    self.endGame = false
    
    self.functions = {
        [F0] = {}
    }
    
    self.f0NextInstruction = 1
    self.start = false

    self.door = Door(self.map, self.world)
    self.grass = Grass(self.map, self.world, 17)

    self.grass = Yellow(self.map, self.world)
end

function Level3:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self:executeInstruction(dt)
    self.door:update(dt, self.endGame)

    if self.player.collider:enter('Door') then
        self.endGame = true
        self.player.isMoving = false
        self.functions[F0] = {}
    end

    if self.player.collider:enter('Solid') then
        self.player.speed = 0
        self.player.isMoving = false
        print("bateu")
    end

end

function Level3:executeInstruction(dt)
    if self.start then
        local nextMovement = self.functions[F0][self.f0NextInstruction]     
        if nextMovement == F0 then
            self.f0NextInstruction = 1
        else
            self.player:move(nextMovement, dt)
            self.f0NextInstruction = self.f0NextInstruction + 1
        end
        nextMovement = self.functions[F0][self.f0NextInstruction]
        love.timer.sleep(0.1)
    end
end

function Level3:drawSelectedButtons(second, third)
    love.graphics.draw(self.control.buttons[F0], 310, 160) --answer
    love.graphics.draw(self.control.buttons[second], 325, 161) --answer
    love.graphics.draw(self.control.buttons[third], 339, 161) --answer
end

function Level3:drawCommands()
    self.control:render(self.text, self.numberOfCommands)
end

function Level3:insert(command)
    if #level.functions[F0] < level.numberOfCommands - 1 then
        table.insert(self.functions[F0], command)
    end
end

function Level3:reset()
    self.player:resetPosition()
    self.functions[F0] = {}
    self.f0NextInstruction = 1
    self.endGame = false
end

function Level3:run()
    self.start = true
end

function Level3:render()
    self.map:draw()
    self:drawCommands()

        self.door:draw()
    if self.endGame == false then
        self.player:draw()
    end
    self.world:draw()
end



-- Level3 = Class{}

-- function Level3:init(controler)
--     self.map = sti("maps/two.lua")

--     self.player = Player(self.map, FACE_RIGHT, 9)
--     self.control = controler
--     self.text = 'Help Tonny get to school..'
--     self.answerSize = 6

--     self.f0 = {}
--     self.f0NextInstruction = 1
-- end

-- function Level3:update(dt)
--     self.map:update(dt)
-- end

-- function Level3:drawSelectedButtons(second, third, fourth, fith, sixth)
--     love.graphics.draw(self.control.buttons['f0'], 310, 160) --answer
--     love.graphics.draw(self.control.buttons[second], 325, 161) --answer
--     love.graphics.draw(self.control.buttons[third], 339, 161) --answer
--     love.graphics.draw(self.control.buttons[fourth], 356, 161) --answer
--     love.graphics.draw(self.control.buttons[fith], 371, 161) --answer
--     love.graphics.draw(self.control.buttons[sixth], 385, 160) --answer
-- end

-- function Level3:run()
--     if self.f0[self.f0NextInstruction] == WALK then
--         self.player.move[WALK]()
--     elseif self.f0[self.f0NextInstruction] == F0 then
--         print(self.f0[self.f0NextInstruction])
--         self.f0NextInstruction = 0
--     elseif self.f0[self.f0NextInstruction] == FACE_LEFT or self.f0[self.f0NextInstruction] == FACE_RIGHT then
--         self.player.move[self.f0[self.f0NextInstruction]]()
--     end
--     love.timer.sleep(0.05)
--     print(self.f0NextInstruction)
--     if self.f0NextInstruction < self.answerSize then
--         self.f0NextInstruction = self.f0NextInstruction + 1
--     end
-- end

-- function Level3:drawCommands()
--     self.control:render(self.text, self.answerSize)
--     --self:drawSelectedButtons(WALK, 'left', WALK, 'right', 'f0')
-- end

-- function Level3:render()
--     self.map:draw()
--     self:drawCommands()
--     self.player:draw()
-- end
