execute as @e[type=#nolag_config:killmobs,nbt={PersistenceRequired:0b}] run scoreboard players add @e[tag=NoLag] nl.killCount 1

gamerule doMobLoot false
kill @e[type=#nolag_config:killmobs,nbt={PersitenceRequired:0b}]
gamerule doMobLoot true

tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[tag=NoLag]","objective":"nl.killCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
scoreboard players set @e[tag=NoLag] nl.killCount 0