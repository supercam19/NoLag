execute as @e[tag=NoLag,limit=1] if score @s secondTimer matches 19 run scoreboard players add @s clearTask 1

execute as @e[tag=NoLag] run scoreboard players operation @s clearWarnOP = @s Clear_Task
execute as @e[tag=NoLag] run scoreboard players operation @s clearWarnOP -= @s Clear_Warn_Time

execute if score @e[tag=NoLag,limit=1] clearWarnOP = @e[tag=NoLag,limit=1] clearTask if score @e[tag=NoLag,limit=1] secondTimer matches 10 run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Warning! ","color":"dark_red"}, {"text":"Ground items will be removed in ","color":"red"}, {"score":{"name":"@e[tag=NoLag]","objective":"Clear_Warn_Time"},"color":"gold"}, {"text":" seconds!","color":"red"}]

execute if score @e[tag=NoLag,limit=1] clearTask >= @e[tag=NoLag,limit=1] Clear_Task run function nolag:cleartask/cleartaskrun