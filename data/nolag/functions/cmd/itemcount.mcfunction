execute as @e[type=#nolag:cleararrow,nbt={inGround:1b}] run scoreboard players add @e clearCount 1
execute as @e[type=item] run scoreboard players add @e[tag=NoLag] clearCount 1

tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"@e[tag=NoLag]","objective":"clearCount"},"color":"gold"}, {"text":" entities. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nolag:cleartaskrun"}}]
scoreboard players set @e[tag=NoLag] clearCount 0