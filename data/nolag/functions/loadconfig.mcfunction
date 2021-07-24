# declare scoreboards for the config
scoreboard objectives add nl.Clear_Task dummy
scoreboard objectives add nl.Clear_Time dummy
scoreboard objectives add nl.Reset_Timer dummy
scoreboard objectives add nl.No_AI dummy
scoreboard objectives add nl.No_Collision dummy
scoreboard objectives add nl.Auto_Clear dummy
scoreboard objectives add nl.Halt_Clear dummy
scoreboard objectives add nl.Halt_KillMobs dummy
scoreboard objectives add nl.Halt_Growth dummy
scoreboard objectives add nl.Halt_Fire dummy
scoreboard objectives add nl.Halt_Spawns dummy
scoreboard objectives add nl.Halt_Grief dummy
scoreboard objectives add nl.Halt_Traders dummy
scoreboard objectives add nl.Halt_Phantoms dummy

# run the config function, therefore updating the scoreboard values
function nolag_config:config