# see nolag/functions/loadconfig.mcfunction
function nolag:loadconfig
# see nolag/functions/setscores.mcfunction
function nolag:setscores

# unction nolag/functions/tick.mcfunction
function nolag:tick

# remove previous storages
data remove storage minecraft:nolag NoLag

# declare storage(arrays and strings)
data modify storage nolag NoLag prepend value {Version:"2.0.0"}
data modify storage nolag NoLag prepend value {Modules:[]}
# the following line is for other developers who want to make NoLag forks/extensions/etc...
# change the string Extensions to the name of your extension, it will be displayed in the debug menu
data modify storage nolag NoLag prepend value {Extensions:"None Detected"}

# declare general scoreboards
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
scoreboard objectives add nl.tps dummy
scoreboard objectives add nl.errorsFixed dummy
scoreboard objectives add nl.datapacks dummy
scoreboard objectives add nl.onlinePlayers dummy

# declare scoreboards used for /halt
scoreboard objectives add nl.fireTick dummy
scoreboard objectives add nl.mobSpawning dummy
scoreboard objectives add nl.mobGriefing dummy
scoreboard objectives add nl.traderSpawns dummy
scoreboard objectives add nl.insomnia dummy

# initialise scoreboards
scoreboard players set $NoLag nl.areFrozen 0
scoreboard players set $NoLag nl.isHalted 0
scoreboard players set $NoLag nl.freezeToggled 0
scoreboard players set $NoLag nl.haltToggled 0

# create teams
team add nl.noCollide
team modify nl.noCollide collisionRule never

# find the difference between score nl.Clear_Task and nl.Clear_Time. This will tell NoLag when to broadcast how long until items are removed
scoreboard players operation $NoLag nl.clearWarnOP = $NoLag nl.Clear_Task
scoreboard players operation $NoLag nl.clearWarnOP -= $NoLag nl.Clear_Time

# announce NoLag reloaded successfully
tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] NoLag reloaded successfully!","color":"gray"}

#schedule the debug for 5 seconds after load
schedule function nolag:debug 5s
