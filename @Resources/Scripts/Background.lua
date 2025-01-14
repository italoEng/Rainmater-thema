function Initialize()
    -- Inicialização do script
end

function B(option)
    -- Determina a cor com base na opção selecionada
    local optionValue = SKIN:GetVariable("optionValue" .. option)
    local sizeValue = SKIN:GetVariable("Size" .. option)
    local sizeIconValue = SKIN:GetVariable("Iconsize" .. option)
    local IconxValue = SKIN:GetVariable("Iconx" .. option)
    local IconyValue = SKIN:GetVariable("Icony" .. option)
    local CircularBarxyValue = SKIN:GetVariable("CircularBarxy" .. option)
    local CircularBarwhValue = SKIN:GetVariable("CircularBarwh" .. option)
    local LineStartValue = SKIN:GetVariable("LineStart" .. option)
    local LineLengthValue = SKIN:GetVariable("LineLength" .. option)
    local porcentagemxValue = SKIN:GetVariable("porcentagemx" .. option)
    local porcentagemyValue = SKIN:GetVariable("porcentagemy" .. option)
    local textxValue = SKIN:GetVariable("textx" .. option)
    local textyValue = SKIN:GetVariable("texty" .. option)


    -- Lista de skins para atualizar
    local skins = {
        {name = "Settings", path = "#ROOTCONFIGPATH#Settings\\Settings.ini"},
        {name = "CPU", path = "#ROOTCONFIGPATH#CPU\\CPU.ini"},
        {name = "RAM", path = "#ROOTCONFIGPATH#RAM\\RAM.ini"},
        {name = "GPU", path = "#ROOTCONFIGPATH#GPU\\GPU.ini"},
        {name = "CircularBar", path = "#ROOTCONFIGPATH#\\CircularBar.ini"},

    }

    -- Atualiza cada skin na lista
    for _, skin in ipairs(skins) do
        SKIN:Bang("!WriteKeyValue", "Variables", "SelectedOption", optionValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "FontSize", sizeValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "WIcon", sizeIconValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "XIcon", IconxValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "YIcon", IconyValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "XYCircularBar", CircularBarxyValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "WHCircularBar", CircularBarwhValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "LineStart", LineStartValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "LineLength", LineLengthValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "Xporcentagem", porcentagemxValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "Yporcentagem", porcentagemyValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "Xtext", textxValue, skin.path)
        SKIN:Bang("!WriteKeyValue", "Variables", "Ytext", textyValue, skin.path)
        SKIN:Bang("!Refresh", "Fbz001\\" .. skin.name)
    end
end

