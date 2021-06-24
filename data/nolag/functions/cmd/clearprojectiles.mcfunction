execute as @e[type=#nolag_config:clearprojectiles] run scoreboard players add @e[tag=NoLag] nl.clearCount 1

kill @e[type=#nolag_config:clearprojectiles]

tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"@e[tag=NoLag]","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
scoreboard players set @e[tag=NoLag] nl.clearCount 0