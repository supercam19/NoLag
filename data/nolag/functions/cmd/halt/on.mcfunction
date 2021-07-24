# changes gamerules based off the config
execute if score $NoLag nl.Halt_Growth matches 1 run gamerule randomTickSpeed 0
execute if score $NoLag nl.Halt_Fire matches 1 run gamerule doFireTick false
execute if score $NoLag nl.Halt_Spawns matches 1 run gamerule doMobSpawning false
execute if score $NoLag nl.Halt_Grief matches 1 run gamerule mobGriefing false
execute if score $NoLag nl.Halt_Traders matches 1 run gamerule doTraderSpawning false
execute if score $NoLag nl.Halt_Phantoms matches 1 run gamerule doInsomnia false
# runs functions based off the config
execute if score $NoLag nl.Halt_Clear matches 1 run function nolag:cmd/clearlag
execute if score $NoLag nl.Halt_KillMobs matches 1 run function nolag:cmd/killmobs

# announce the server has been halted
tellraw @a[tag=!nl.blacklist,tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Server activity has been ","color":"green"}, {"text":"halted!","color":"red"}]

# set whether or not the server is halted to true
scoreboard players set $NoLag nl.isHalted 1
# sets if NoLag can modify halt status to false
scoreboard players set $NoLag nl.haltToggled 0