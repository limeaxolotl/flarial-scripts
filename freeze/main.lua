function onEnable()
    Notify("Enabled")
end

function onDisable()
    Notify("Disabled")
end

onCommand("freeze", "freezes game", function(args)
    local freezeDuration = tonumber(args[1])
    if freezeDuration == nil then
        Notify("Please use a number as the command argument")
    else
        -- I imagine you aren't supposed to be able to just freeze the game with scripting, so this may not be functional as scripting gets developed further
        local endTime = os.clock() + freezeDuration
        while os.clock() < endTime do 
        end
    end 
end)
