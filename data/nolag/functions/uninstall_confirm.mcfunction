kill @e[tag=NoLag,type=armor_stand]

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
scoreboard objectives remove nl.freezeState
scoreboard objectives remove nl.haltState

tellraw @s ["",{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"] ","color":"gold"},{"text":"UNINSTALLING. ","color":"dark_red"},{"text":"Delete the folder from your world folder before restarting the server or else it will re-install!\n\nGoodbye.","color":"green"},{"text":"\nUninstalled datapack \"NoLag\" sucessfully"}]
