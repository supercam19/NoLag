scoreboard players add @e[tag=NoLag] secondTimer 1
execute as @e[tag=NoLag,limit=1] if score @s secondTimer matches 20.. run scoreboard players set @s secondTimer 0
