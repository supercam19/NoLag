kill @e[type=armor_stand,tag=NoLag]

summon minecraft:armor_stand 0 250 0 {Tags: [NoLag], NoGravity: 1, Invisible: 1, Invulnerable: 1}
function nolag:loadconfig

execute if score @e[type=armor_stand,tag=NoLag,limit=1] nl.Auto_Clear matches 1 run function nolag:executetick

scoreboard objectives add nl.secondTimer dummy
scoreboard objectives add nl.clearTask dummy
scoreboard objectives add nl.clearCount dummy
scoreboard objectives add nl.killCount dummy
scoreboard objectives add nl.clearWarnOP dummy
scoreboard objectives add nl.gamemode dummy
scoreboard objectives add nl.areFrozen dummy
scoreboard objectives add nl.isHalted dummy
scoreboard objectives add nl.haltToggled dummy
scoreboard objectives add nl.freezeToggled dummy
scoreboard objectives add nl.entityCounted dummy

scoreboard players set @e[type=armor_stand,tag=NoLag] nl.areFrozen 0
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.freezeToggled 0
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.isHalted 0
scoreboard players set @e[type=armor_stand,tag=NoLag] nl.haltToggled 0

execute as @e[type=armor_stand,tag=NoLag] run scoreboard players operation @s nl.clearWarnOP = @s nl.Clear_Task
execute as @e[type=armor_stand,tag=NoLag] run scoreboard players operation @s nl.clearWarnOP -= @s nl.Clear_Time

scoreboard players set @e[type=armor_stand,tag=NoLag,limit=1] nl.isHalted 0
scoreboard players set @e[type=armor_stand,tag=NoLag,limit=1] nl.areFrozen 0

execute if score @e[type=armor_stand,tag=NoLag,limit=1] nl.Broadcast matches 1 run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Reloaded!","color":"green"}]

schedule function nolag:debug 5s
