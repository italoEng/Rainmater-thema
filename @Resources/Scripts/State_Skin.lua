function Initialize()
    -- Inicialização do script
end

function Run()
    print("Função Run chamada")
    local cpuEnabled = SKIN:GetVariable("CPUEnabled")

    if cpuEnabled == "1" then
        SKIN:Bang("!ActivateConfig", "Fbz001\\CPU")
    else
        SKIN:Bang("!DeactivateConfig", "Fbz001\\CPU")
    end
end

