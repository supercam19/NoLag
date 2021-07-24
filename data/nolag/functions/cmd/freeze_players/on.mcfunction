execute as @a store result score @s nl.gamemode run data get entity @s playerGameType
gamemode spectator @a
execute positioned as @a run summon armor_stand ~ ~ ~ {Invulnerable: 1, Invisible: 1, NoGravity: 1, Tags: [nl.freezePlayer]}
execute as @a run spectate @e[type=armor_stand,tag=nl.freezePlayer,limit=1,sort=nearest] @s
tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"You have been ","color":"green"}, {"text":"frozen","color":"aqua"}]
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.areFrozen 1
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.freezeToggled 0