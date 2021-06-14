execute as @e[type=#nolag:cleararrow,nbt={inGround:1b}] run scoreboard players add @e[tag=NoLag] clearCount 1
execute as @e[type=item] run scoreboard players add @e[tag=NoLag] clearCount 1

execute if score @e[tag=NoLag,limit=1] clearCount matches 1.. run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[tag=NoLag]","objective":"clearCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
execute if score @e[tag=NoLag,limit=1] clearCount matches 0 run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"text":"0","color":"gold"}, {"text":"entities","color":"green"}]

kill @e[type=item]
kill @e[type=#nolag:cleararrow,nbt={inGround:1b}]

scoreboard players set @e[tag=NoLag] clearCount 0
scoreboard players set @e[tag=NoLag] clearTask 0
