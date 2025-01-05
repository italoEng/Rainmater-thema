function Initialize()
    -- Inicialização do script
end

function ChangeColor(option)
    -- Determina a cor com base na opção selecionada
    local color = SKIN:GetVariable("Color" .. option)
    if not color then
        print("Cor não encontrada para a opção: " .. option)
        return
    end

    -- Lista de skins para atualizar
    local skins = {
        {name = "Settings", path = "#ROOTCONFIGPATH#Settings\\Settings.ini"},
        {name = "CPU", path = "#ROOTCONFIGPATH#CPU\\CPU.ini"}
    }

    -- Atualiza cada skin na lista
    for _, skin in ipairs(skins) do
        SKIN:Bang("!WriteKeyValue", "Variables", "FontColor", color, skin.path)
        SKIN:Bang("!Refresh", "Fbz001\\" .. skin.name)
    end
end
