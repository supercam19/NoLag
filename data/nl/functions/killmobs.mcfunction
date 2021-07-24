execute as @e[type=#nolag_config:killmobs,nbt={PersistenceRequired: 0b}] run scoreboard players add @e[type=armor_stand,tag=NoLag] nl.killCount 1

gamerule doMobLoot false
kill @e[type=#nolag_config:killmobs,nbt={PersistenceRequired:0b}]
gamerule doMobLoot true

tellraw @a[tag=!nl.blacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[tag=NoLag,limit=1]","objective":"nl.killCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.killCount 0