# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# kill the armor stand
kill @e[type=armor_stand,tag=NoLag]

# delete scoreboards
scoreboard objectives remove nl.secondTimer
scoreboard objectives remove nl.clearTask
scoreboard objectives remove nl.clearCount
scoreboard objectives remove nl.killCount
scoreboard objectives remove nl.clearWarnOP
scoreboard objectives remove nl.gamemode
scoreboard objectives remove nl.Clear_Task
scoreboard objectives remove nl.Clear_Time
scoreboard objectives remove nl.Broadcast
scoreboard objectives remove nl.Auto_Clear
scoreboard objectives remove nl.Halt_Clear
scoreboard objectives remove nl.Halt_KillMobs
scoreboard objectives remove nl.Halt_Growth
scoreboard objectives remove nl.Halt_Fire
scoreboard objectives remove nl.Halt_Spawns
scoreboard objectives remove nl.Halt_Grief
scoreboard objectives remove nl.Halt_Traders
scoreboard objectives remove nl.Halt_Phantoms
scoreboard objectives remove nl.areFrozen
scoreboard objectives remove nl.isHalted
scoreboard objectives remove nl.haltToggled
scoreboard objectives remove nl.freezeToggled
scoreboard objectives remove nl.entityCounted
scoreboard objectives remove nl.fireTick
scoreboard objectives remove nl.mobSpawning
scoreboard objectives remove nl.mobGriefing
scoreboard objectives remove nl.traderSpawns
scoreboard objectives remove nl.insomnia
scoreboard objectives remove nl.tps
scoreboard objectives remove nl.onlinePlayers
scoreboard objectives remove nl.errorsFixed
scoreboard objectives remove nl.datapacks

# remove tags (!note this only removes tags for players online at time of uninstall)
tag @a remove nl.completeblacklist
tag @a remove nl.blacklist
tag @a remove nl.debug
tag @e remove nl.noai

# remove data storages
data remove storage nolag NoLag

# remove teams
team remove nl.noCollide

# declare it uninstalled succesfully
tellraw @s ["",{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"] ","color":"gold"},{"text":"UNINSTALLING. ","color":"dark_red"},{"text":"Delete the folder from your world folder before restarting the server or else it will re-install!\n","color":"green"},{"text":"\nUninstalled datapack \"NoLag\" sucessfully"}]