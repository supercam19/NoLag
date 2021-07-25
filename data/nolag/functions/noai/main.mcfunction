# disable AI for entities with PersistanceRequired:0b, tag=!nl.noai and the nearest player is more than 64 blocks away
execute as @e[type=#nolag_config:noai,tag=!nl.noai,nbt={PersistenceRequired:0b}] at @s unless entity @p[distance=..64,gamemode=!spectator] run function nolag:noai/enable
# enable AI for emtities tag=nl.noai and the nearest player is less than 64 blocks away
execute as @e[type=#nolag_config:noai,tag=nl.noai] at @s if entity @p[distance=..64,gamemode=!spectator] run function nolag:noai/disable
