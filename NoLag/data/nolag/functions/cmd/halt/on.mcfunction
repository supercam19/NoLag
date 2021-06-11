execute if score @e[tag=NoLag,limit=1] Halt_Growth matches 1 run gamerule randomTickSpeed 0
execute if score @e[tag=NoLag,limit=1] Halt_Fire matches 1 run gamerule doFireTick false
execute if score @e[tag=NoLag,limit=1] Halt_Mob_Spawns matches 1 run gamerule doMobSpawning false
execute if score @e[tag=NoLag,limit=1] Halt_Mob_Grief matches 1 run gamerule mobGriefing false
execute if score @e[tag=NoLag,limit=1] Halt_Traders matches 1 run gamerule doTraderSpawning false
execute if score @e[tag=NoLag,limit=1] Halt_Phantoms matches 1 run gamerule doInsomnia false
execute if score @e[tag=NoLag,limit=1] Halt_Clear matches 1 run function nolag:cmd/clearlag
execute if score @e[tag=NoLag,limit=1] Halt_KillMobs matches 1 run function nolag:cmd/killmobs

tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Server activity has been ","color":"green"}, {"text":"halted!","color":"red"}]