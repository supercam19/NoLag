execute as @e[type=#nolag_config:killmobs] run scoreboard players add @e[tag=NoLag] nl.killCount 1

tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"@e[tag=NoLag]","objective":"nl.killCount"},"color":"gold"}, {"text":" mobs. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nolag:cmd/killmobs"}}]
scoreboard players set @e[tag=NoLag] nl.killCount 0