kill @e[type=armor_stand,tag=NoLag]

summon minecraft:armor_stand 0 250 0 {Tags:[NoLag],NoGravity:1,Invisible:1,Invulnerable:1}
function nolag:loadconfig

execute if score @e[tag=NoLag,limit=1] Broadcast_Reload matches 1 run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Server Reloaded!","color":"green"}]


scoreboard objectives add secondTimer dummy
scoreboard objectives add clearTask dummy
scoreboard objectives add clearCount dummy
scoreboard objectives add killCount dummy
scoreboard objectives add clearWarnOP dummy
