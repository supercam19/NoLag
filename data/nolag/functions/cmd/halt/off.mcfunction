# set gamerules to what they were before the halt
gamerule randomTickSpeed 3
execute if score $NoLag nl.fireTick matches 1 run gamerule doFireTick true
execute if score $NoLag nl.mobSpawning matches 1 run gamerule doMobSpawning true
execute if score $NoLag nl.mobGriefing matches 1 run gamerule mobGriefing true
execute if score $NoLag nl.traderSpawns matches 1 run gamerule doTraderSpawning true
execute if score $NoLag nl.insomnia matches 1 run gamerule doInsomnia true

# announce that the halt has ended
tellraw @a[tag=!nl.blacklist,tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Server activity has ","color":"green"}, {"text":"resumed!","color":"gold"}]

# sets isHalted to false
scoreboard players set $NoLag nl.isHalted 0
# sets whether or not Nolag can modify halt status to false
scoreboard players set $NoLag nl.haltToggled 0