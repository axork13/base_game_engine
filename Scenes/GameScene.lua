
local GameScene = {}

function GameScene:new()
    local gs = {}
    gs.type = "Game"

    setmetatable(gs, self)
    self.__index = self

    return gs
end

function GameScene:load()

end

function GameScene:update()

end

function GameScene:draw()    
    love.graphics.print(self.type, 400, 300)
    love.graphics.print(lm.locale["options"]["greeting"]["world"], 400, 320)
end

return GameScene