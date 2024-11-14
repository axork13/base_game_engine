local LocaleManager = {}

function LocaleManager:new()
    local lm = {}

    lm.locale = {}
    lm.currentLanguage = "en"

    setmetatable(lm, self)
    self.__index = self
    return lm
end

function LocaleManager:load(pLang)
    local filename = "locales/"..pLang..".json"
    local file = love.filesystem.read(filename)
    
    if file then
        self.locale = json.decode(file)
    else
        print("Langue non trouvée, chargement par défaut (anglais)")
        self.locale = json.decode(love.filesystem.read("locales/en.json"))
    end
end

function LocaleManager:switchLanguage()
    if self.currentLanguage == "en" then
        self.currentLanguage = "fr"
    else
        self.currentLanguage = "en"
    end

    self:load(self.currentLanguage)
end

return LocaleManager