# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# count clearable entities, see nolag_config/tags/entity_types/killmobs.json for full list
execute as @e[type=#nolag_config:killmobs,nbt={PersistenceRequired: 0b}] run scoreboard players add $NoLag nl.killCount 1

# disable mob drops, kill mobs, then re-enable drops
gamerule doMobLoot false
kill @e[type=#nolag_config:killmobs,nbt={PersistenceRequired:0b}]
gamerule doMobLoot true

# announce the amount of mobs cleared
tellraw @a[tag=!nl.blacklist,tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"$NoLag","objective":"nl.killCount"},"color":"gold"}, {"text":" entities!","color":"green"}]

# reset the counter of entities
scoreboard players set $NoLag nl.killCount 0

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:killmobs'"}]}