execute as @e[type=#nolag_config:cleararrow,nbt={inGround:1b}] run scoreboard players add @e nl.clearCount 1
execute as @e[type=item] run scoreboard players add @e[tag=NoLag] nl.clearCount 1

execute if score @e[tag=NoLag,limit=1] nl.clearCount matches 1.. run tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"@e[tag=NoLag]","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nolag:cleartaskrun"}}]
execute if score @e[tag=NoLag,limit=1] nl.clearCount matches 0 run tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"text":"0","color":"gold"}, {"text":" entities. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nolag:cleartaskrun"}}]


scoreboard players set @e[tag=NoLag] nl.clearCount 0