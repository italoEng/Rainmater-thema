function Initialize()
    -- Inicialização do script
end

function B(option)
    -- Determina a cor com base na opção selecionada
    local optionValue = SKIN:GetVariable("optionValue" .. option)
    if not optionValue then
        print("Cor não encontrada para a opção: " .. option)
        return
    end

    -- Lista de skins para atualizar
    local skins = {
        {name = "Settings", path = "#ROOTCONFIGPATH#Settings\\Settings.ini"},
        {name = "CPU", path = "#ROOTCONFIGPATH#CPU\\CPU.ini"},
        {name = "RAM", path = "#ROOTCONFIGPATH#RAM\\RAM.ini"},
        {name = "GPU", path = "#ROOTCONFIGPATH#GPU\\GPU.ini"},
        {name = "GPU", path = "#ROOTCONFIGPATH#\\CircularBar.ini"}

    }

    -- Atualiza cada skin na lista
    for _, skin in ipairs(skins) do
        SKIN:Bang("!WriteKeyValue", "Variables", "SelectedOption", optionValue, skin.path)
        SKIN:Bang("!Refresh", "Fbz001\\" .. skin.name)
    end
end

