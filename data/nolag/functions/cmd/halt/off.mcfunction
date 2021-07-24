gamerule randomTickSpeed 3
gamerule doFireTick true
gamerule doMobSpawning true
gamerule mobGriefing false
gamerule doTraderSpawning false
gamerule doInsomnia false

tellraw @a[tag=!nl.blacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Server activity has ","color":"green"}, {"text":"resumed!","color":"gold"}]

scoreboard players set @e[type=armor_stand,tag=NoLag] nl.isHalted 0
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.haltToggled 0