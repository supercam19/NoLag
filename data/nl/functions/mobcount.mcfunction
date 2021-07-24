execute as @e[type=#nolag_config:killmobs] run scoreboard players add @e[type=armor_stand,tag=NoLag] nl.killCount 1

tellraw @s [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"There are ","color":"red"}, {"score":{"name":"@e[type=armor_stand,tag=NoLag,limit=1]","objective":"nl.killCount"},"color":"gold"}, {"text":" mobs. ","color":"red"}, {"text":"Clear now?","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function nl:killmobs"}}]
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.killCount 0