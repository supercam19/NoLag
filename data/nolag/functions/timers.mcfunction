scoreboard players add @e[tag=NoLag] nl.secondTimer 1
execute as @e[tag=NoLag,limit=1] if score @s nl.secondTimer matches 20.. run scoreboard players set @s nl.secondTimer 0
