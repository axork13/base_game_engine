json = require("/Libs.Json")
local SceneManager = require("/Managers/SceneManager")
local LocaleManager = require("/Managers/LocaleManager")


--< Empèche Love de filtrer les contours des images quand elles sont redimentionnées >--
--< Indispensable pour du pixel art >--
love.graphics.setDefaultFilter("nearest")

--< VARIABLES GLOBALE >--
SCREEN_WIDTH = love.graphics.getWidth()
SCREEN_HEIGHT = love.graphics.getHeight()

function love.load()
    lm = LocaleManager:new()
    lm:load(lm.currentLanguage)

    sm = SceneManager:new()
    sm:load()
end

function love.update(dt)

end

function love.draw()
    sm:draw()
end

function love.keypressed(key)
    if key == "l" then
        lm:switchLanguage()
    end
    sm:keypressed(key)
end

