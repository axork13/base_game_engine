local Menu = require("/Scenes/MenuScene")
local Game = require("/Scenes/GameScene")

local SceneManager = {}

function SceneManager:new()
    local sm = {}
    sm.lstScene = {}

    setmetatable(sm, self)
    self.__index = self

    return sm
end

function SceneManager:load()
    self.lstScene["Menu"] = Menu:new()
    self.lstScene["Game"] = Game:new()

    self.currentScene = self.lstScene["Menu"]
end

function SceneManager:draw()
    -- Exemple for pairs
    -- for type,scene in pairs(self.lstScene) do
    -- end
    self.currentScene:draw()
end

function SceneManager:keypressed(key)
    if key == "g" then
        self:switchScene("Game")
    end

    if key == "m" then
        self:switchScene("Menu")
    end
end

function SceneManager:switchScene(pSceneType)
    self.currentScene = self.lstScene[pSceneType]
end



return SceneManager