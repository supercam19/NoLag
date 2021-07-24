execute as @e[type=armor_stand,tag=NoLag] run scoreboard players add @a nl.entityCounted 1
execute unless score @r nl.entityCounted matches 1 run function nolag:debugfix

scoreboard players set @a nl.entityCounted 0