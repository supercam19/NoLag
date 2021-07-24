# Help with this function provided by MysteryBlokHed https://www.github.com/MysteryBlokHed
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.freezeToggled 1
execute if score @e[type=armor_stand,tag=NoLag,limit=1] nl.areFrozen matches 1 if score @e[type=armor_stand,tag=NoLag,limit=1] nl.freezeToggled matches 1 run function nolag:cmd/freeze_players/off
execute if score @e[type=armor_stand,tag=NoLag,limit=1] nl.areFrozen matches 0 if score @e[type=armor_stand,tag=NoLag,limit=1] nl.freezeToggled matches 1 run function nolag:cmd/freeze_players/on
scoreboard players set @e[tag=NoLag] nl.freezeToggled 0