# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# count the total number of mobs to be cleared, to see the list of mobs go to nolag_config/tags/entity_types/killmobs.mcfunction
execute as @e[type=#nolag_config:killmobs] run scoreboard players add $NoLag nl.killCount 1

# declare the amount of clearable mobs
tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"$NoLag","objective":"nl.killCount"},"color":"gold"}, {"text":" mobs. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nl:killmobs"}}]

# resets the counter of clearable entities
scoreboard players set $NoLag nl.killCount 0

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:mobcount'"}]}