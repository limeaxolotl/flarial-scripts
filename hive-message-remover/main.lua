function onEnable()
    Notify("Enabled")
end

function onDisable()
    Notify("Disabled")
end

onEvent(EventType.onPacketReceiveEvent, function(packet, id)
    if id == MinecraftPacketIds.Text then
        if TextPacket.getPacket(packet).message == "§6[§e!§6] §r§9Need help? §3Go to §asupport.playhive.com" then
            return true
        elseif TextPacket.getPacket(packet).message == "§6[§e!§6] §r§7Didn't get your store purchase? §3Try §a/fixpurchase" then
            return true
        elseif TextPacket.getPacket(packet).message == "§6[§e!§6] §r§cFound someone breaking the rules? §eReport them with §f/report§e." then
            return true
        elseif TextPacket.getPacket(packet).message == "§6[§e!§6] §r§bFollow our Instagram: §a@theHiveMC" then 
            return true
        elseif TextPacket.getPacket(packet).message == "§6[§e!§6] §r§aFollow our Twitter: §b@theHiveMC" then
            return true
        elseif TextPacket.getPacket(packet).message == "§6[§e!§6] §r§9Join our Discord: run §d/discord §9or visit §ddiscord.gg/hive" then
            return true
        end
    end
end)
