execute as @e[type=#nolag_config:cleararrow,nbt={inGround:1b}] run scoreboard players add @e[tag=NoLag] nl.clearCount 1
execute as @e[type=item] run scoreboard players add @e[tag=NoLag] nl.clearCount 1

tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[tag=NoLag]","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
kill @e[type=item]
kill @e[type=#nolag_config:cleararrow,nbt={inGround:1b}]

scoreboard players set @e[tag=NoLag] nl.clearCount 0
scoreboard players set @e[tag=NoLag] nl.clearTask 0
