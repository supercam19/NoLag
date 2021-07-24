# store the players gamemode so they can revert to it when unfrozen
execute as @a store result score @s nl.gamemode run data get entity @s playerGameType
# set all players to spectator mode, which is necessary to spectate an entity
gamemode spectator @a
# summon an armor stand at every players position
execute positioned as @a at @s run summon armor_stand ~ ~ ~ {Invulnerable: 1, Invisible: 1, NoGravity: 1, Tags: [nl.freezePlayer]}
# make all players spectate their respective armor stand
execute as @a run spectate @e[type=armor_stand,tag=nl.freezePlayer,limit=1,sort=nearest] @s
# tell the players they have been frozen
tellraw @a[tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"You have been ","color":"green"}, {"text":"frozen","color":"aqua"}]
# set whether or not the players are frozen to true
scoreboard players set $NoLag nl.areFrozen 1
# set whether or not NoLag can modify the players frozen status to false
scoreboard players set $NoLag nl.freezeToggled 0