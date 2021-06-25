kill @e[tag=NoLag]

summon minecraft:armor_stand 0 250 0 {Tags:[NoLag],NoGravity:1,Invisible:1,Invulnerable:1}
function nolag:loadconfig

function nolag:tick

scoreboard objectives add nl.secondTimer dummy
scoreboard objectives add nl.clearTask dummy
scoreboard objectives add nl.clearCount dummy
scoreboard objectives add nl.killCount dummy
scoreboard objectives add nl.clearWarnOP dummy
scoreboard objectives add nl.gamemode dummy

execute as @e[tag=NoLag] run scoreboard players operation @s nl.clearWarnOP = @s nl.Clear_Task
execute as @e[tag=NoLag] run scoreboard players operation @s nl.clearWarnOP -= @s nl.Clear_Time

execute if score @e[tag=NoLag,limit=1] nl.Broadcast matches 1 run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Reloaded!","color":"green"}]
