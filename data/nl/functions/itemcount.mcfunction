# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# count clearable entities
execute as @e[type=#nolag_config:cleararrow,nbt={inGround: 1b}] run scoreboard players add $NoLag nl.clearCount 1
execute as @e[type=item] run scoreboard players add $NoLag nl.clearCount 1

# display amount of clearable entities
tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"$NoLag","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nolag:cleartask/cleartaskrun"}}]

# reset counter
scoreboard players set $NoLag nl.clearCount 0

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:itemcount'"}]}