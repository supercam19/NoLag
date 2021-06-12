execute as @e[type=#nolag:killmobs] run scoreboard players add @e[tag=NoLag] killCount 1

gamerule doMobLoot false
kill @e[type=#nolag:killmobs]
gamerule doMobLoot true

tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[tag=NoLag]","objective":"killCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
scoreboard players set @e[tag=NoLag] killCount 0