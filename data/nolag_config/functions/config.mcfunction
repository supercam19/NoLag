# This is the configuration file for supercam19's NoLag datapack
# To reload the config file, run the command "reload" as an operator in game or as console.
# The default settings are the reccommended settings for the datapack

# For some options, you can choose either 0 or 1
# 0 = False
# 1 = True

# Other options will accept any integer


# Should No Lag automatically clear ground entities?
# Set to True(1) or False(0)
scoreboard players set @e[tag=NoLag] nl.Auto_Clear 1

# This is how often you want ground entities to be removed.
# **THIS VALUE IS NOT SECONDS, HOWEVER NOLAG'S CUSTOM TICKS**
# No Lag ticks once every 10 seconds
# So the default value of 30, is 300 seconds
scoreboard players set @e[tag=NoLag] nl.Clear_Task 30

# This value is how many seconds before the ground entities are removed you want a message displayed in chat. 
# Set to an integer less than Clear_Task
# **ALSO MEASURED IN NOLAG'S CUSTOM TICKS**
# Here 3 is 30 seconds
scoreboard players set @e[tag=NoLag] nl.Clear_Time 3

# Should No Lag broadcast when the server reloads (using the /reload command)?
# Set to True(1) or False(0)
scoreboard players set @e[tag=NoLag] nl.Broadcast 1

# The following options are for running "/function nolag:cmd/halt/on"
# Set the following 2 options to 0 or 1

# Should No Lag clear ground entities when when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Clear 0
# Should No Lag kill mobs when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_KillMobs 0
# Should No Lag stop block spread (grass spread, crop growth, etc) when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Growth 1
# Should No Lag stop fire spread when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Fire 1
# Should No Lag stop mob spawning when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Spawns 0
# Should No Lag stop mob griefing when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Grief 1
# Should No Lag stop wandering traders from spawning when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Traders 1
# Should No Lag stop phantoms from spawning when the server is halted?
scoreboard players set @e[tag=NoLag] nl.Halt_Phantoms 1

