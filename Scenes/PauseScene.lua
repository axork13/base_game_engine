local PauseScene = {}

function PauseScene:new()
    local ps = {}
    ps.type = "Pause"

    setmetatable(ps, self)
    self.__index = self

    return ps
end

function PauseScene:load()

end

function PauseScene:update()

end

function PauseScene:draw()
    love.graphics.print(self.type, 400, 300)
end

return PauseScene