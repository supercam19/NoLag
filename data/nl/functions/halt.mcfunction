# Help with this function provided by MysteryBlokHed https://www.github.com/MysteryBlokHed
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.haltToggled 1
execute if score @e[type=armor_stand,tag=NoLag,limit=1] nl.isHalted matches 1 if score @e[type=armor_stand,tag=NoLag,limit=1] nl.isHalted matches 1 run function nolag:cmd/halt/off
execute if score @e[type=armor_stand,tag=NoLag,limit=1] nl.isHalted matches 0 if score @e[type=armor_stand,tag=NoLag,limit=1] nl.haltToggled matches 1 run function nolag:cmd/halt/on
scoreboard players set @e[tag=NoLag] nl.haltToggled 0