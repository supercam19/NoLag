execute as @a store result score @s nl.gamemode run data get entity @s playerGameType
gamemode spectator @a
execute positioned as @a run summon armor_stand ~ ~ ~ {Invulnerable: 1, Invisible: 1, NoGravity: 1, Tags: [freezePlayer]}
execute as @a run spectate @e[tag=freezePlayer,limit=1,sort=nearest] @s
tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"You have been ","color":"green"}, {"text":"frozen","color":"aqua"}]

execute as @e[tag=NoLag] run scoreboard players set @s nl.freezeState 1
