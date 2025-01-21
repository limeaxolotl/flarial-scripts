# flarial-scripts
Some scripts for [Flarial](https://github.com/flarialmc) I've made

I don't really know how to use Lua so these are probably horribly made

## Chat Logger
Automatically logs chats, saving them in ``%localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\RoamingState\Flarial\chatlogs``. It's a bit buggy on local worlds, but works correctly on servers (from what I have seen). It also logs messages Flarial blocks you from seeing, such as the contents of /connection on Hive.

## Freeze
Adds a command to freeze your game, so if you are midair as it is run you will be frozen midair. Run ``.freeze <duration>`` to freeze your game, replacing ``<duration>`` with however many seconds you want to freeze your game for.

## Hive Message Remover
Hides messages on Hive like ones advertising their Twitter account, as they aren't really needed. I got the idea from the Hive Chat Replacer Onix Client script, which you can find [here](https://github.com/OnixClient-Scripts/OnixClient_Scripts/blob/master/Modules/HiveChatReplacer.lua).
