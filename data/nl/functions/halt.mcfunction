# Help with this function provided by MysteryBlokHed https://www.github.com/MysteryBlokHed
# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# sets whether or not NoLag can halt to true
scoreboard players set $NoLag nl.haltToggled 1
# if halted and can still modify, then unhalt
execute if score $NoLag nl.isHalted matches 1 if score $NoLag nl.isHalted matches 1 run function nolag:cmd/halt/off
# if not halted and can still modify, then halt 
execute if score $NoLag nl.isHalted matches 0 if score $NoLag nl.haltToggled matches 1 run function nolag:cmd/halt/on
# set whether or not NoLag can halt to false
scoreboard players set $NoLag nl.haltToggled 0

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:halt'"}]}