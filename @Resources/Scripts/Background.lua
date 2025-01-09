function Initialize()
    -- Inicialização do script (se necessário)
end

function ToggleBackground(option)
    local background = SKIN:GetVariable("background" .. option)
    if not background  then
        print("background não encontrada para a opção: " .. option)
        return
    end

    local skins = {
        {name = "CPU", path = "#ROOTCONFIGPATH#CPU\\CPU.ini"}
    }

    -- Atualiza cada skin na lista
    for _, skin in ipairs(skins) do
        SKIN:Bang("!WriteKeyValue", "Variables", "ShowBackground", color, skin.path)
        SKIN:Bang("!Refresh", "Fbz001\\" .. skin.name)
    end
end