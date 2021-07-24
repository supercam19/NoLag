# Help with this function provided by MysteryBlokHed https://www.github.com/MysteryBlokHed
# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# set whether or not NoLag can freeze to true
scoreboard players set $NoLag nl.freezeToggled 1
# if frozen and is still allowed to modify, then unfreeze 
execute if score $NoLag nl.areFrozen matches 1 if score $NoLag nl.freezeToggled matches 1 run function nolag:cmd/freeze_players/off
# if unfrozen and still allowed to modify, then freeze
execute if score $NoLag nl.areFrozen matches 0 if score $NoLag nl.freezeToggled matches 1 run function nolag:cmd/freeze_players/on
# set whether or NoLag can freeze to false
scoreboard players set $NoLag nl.freezeToggled 0

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:freeze_players'"}]}