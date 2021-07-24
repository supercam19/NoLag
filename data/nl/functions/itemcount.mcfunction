execute as @e[type=#nolag_config:cleararrow,nbt={inGround: 1b}] run scoreboard players add @e nl.clearCount 1
execute as @e[type=item] run scoreboard players add @e[tag=NoLag] nl.clearCount 1

tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"@e[tag=NoLag,limit=1]","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nolag:cleartask/cleartaskrun"}}]

scoreboard players set @e[type=armor_stand,tag=NoLag] nl.clearCount 0