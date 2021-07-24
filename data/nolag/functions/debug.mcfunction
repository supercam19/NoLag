# this function file aims to solve the most common bug with the datapack
# sometimes minecraft will load the datapack strangely and there will be 2 armor stands with the tag "NoLag"
# ran from nolag/function/load.mcfuntion

# counts how many armor stands with the tag "NoLag" there are
execute as @e[type=armor_stand,tag=NoLag] run scoreboard players add @a nl.entityCounted 1
# if isnt 1 armor stand with the tag "NoLag" then run the fix
execute unless score @r nl.entityCounted matches 1 run function nolag:debugfix

# reset the count for the next time the server is reloaded
scoreboard players set @a nl.entityCounted 0