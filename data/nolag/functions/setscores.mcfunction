# store the current gamerules that are changed in halt so it can be reverted properly after
execute store result score $NoLag nl.fireTick run gamerule doFireTick
execute store result score $NoLag nl.mobSpawning run gamerule doMobSpawning
execute store result score $NoLag nl.traderSpawns run gamerule doTraderSpawning
execute store result score $NoLag nl.insomnia run gamerule doInsomnia
execute store result score $NoLag nl.mobGriefing run gamerule mobGriefing