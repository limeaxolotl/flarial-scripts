flarialPath = getFlarialPath()

function onEnable() 
    Notify("Enabled")
    enableTime = os.date("%d-%m-%y_%H-%M-%S")
    os.execute("if not exist " .. flarialPath .. "\\chatlogs\\ (  mkdir " .. flarialPath .. "\\chatlogs )")
end

function onDisable()
    Notify("Disabled")
end

onEvent(EventType.onPacketReceiveEvent, function(packet, id)
    if id == MinecraftPacketIds.Text then
        chatLog = io.open(flarialPath .. "\\chatlogs\\chatlog-" .. enableTime .. ".txt", "a")
        chatLog:write(TextPacket.getPacket(packet).message .. "\n")
        io.close(chatLog)
    end
end)
