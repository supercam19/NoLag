execute as @e[tag=NoLag,limit=1] if score @s nl.secondTimer matches 19 run scoreboard players add @s nl.clearTask 1

execute as @e[tag=NoLag] run scoreboard players operation @s nl.clearWarnOP = @s nl.Clear_Task
execute as @e[tag=NoLag] run scoreboard players operation @s nl.clearWarnOP -= @s nl.Clear_Time

execute if score @e[tag=NoLag,limit=1] nl.clearWarnOP = @e[tag=NoLag,limit=1] nl.clearTask if score @e[tag=NoLag,limit=1] nl.secondTimer matches 10 run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Warning! ","color":"dark_red"}, {"text":"Ground items will be removed in ","color":"red"}, {"score":{"name":"@e[tag=NoLag]","objective":"nl.Clear_Time"},"color":"gold"}, {"text":" seconds!","color":"red"}]

execute if score @e[tag=NoLag,limit=1] nl.clearTask >= @e[tag=NoLag,limit=1] nl.Clear_Task run function nolag:cleartask/cleartaskrun