scoreboard players add @e[type=armor_stand,tag=NoLag] nl.clearTask 1
execute as @e[type=armor_stand,tag=NoLag,limit=1] if score @s nl.clearWarnOP = @s nl.clearTask run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Warning! ","color":"dark_red"}, {"text":"Ground items will be removed in ","color":"red"}, {"score":{"name":"@e[tag=NoLag,limit=1]","objective":"nl.Clear_Time"},"color":"gold"}, {"text":"0","color":"gold"}, {"text":" seconds!","color":"red"}]

execute as @e[type=armor_stand,tag=NoLag,limit=1] if score @s nl.clearTask >= @s nl.Clear_Task run function nolag:cleartask/cleartaskrun