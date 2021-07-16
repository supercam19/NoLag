execute as @e[type=#nolag_config:cleararrow,nbt={inGround: 1b}] run scoreboard players add @e[type=armor_stand,tag=NoLag] nl.clearCount 1
execute as @e[type=item] run scoreboard players add @e[type=armor_stand,tag=NoLag] nl.clearCount 1

tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[type=armor_stand,tag=NoLag,limit=1]","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
kill @e[type=item]
kill @e[type=#nolag_config:cleararrow,nbt={inGround: 1b}]

scoreboard players set @e[type=armor_stand,tag=NoLag] nl.clearCount 0
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.clearTask 0
