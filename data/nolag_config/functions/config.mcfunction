# This is the configuration file for supercam19's NoLag datapack
# To reload the config file, save it, then run the command "/reload" as an operator in game or as console.
# The default settings are the reccommended settings for the datapack

# For some options, you can choose either 0 or 1
# 0 = False
# 1 = True

# Other options will accept any integer

# This is how often you want ground entities to be removed.
# **THIS VALUE IS NOT SECONDS, HOWEVER NOLAG'S CUSTOM TICKS**
# No Lag ticks once every 10 seconds
# So the default value of 60, is 600 seconds
scoreboard players set $NoLag nl.Clear_Task 60

# This value is how many seconds before the ground entities are removed you want a message displayed in chat. 
# Set to an integer less than nl.Clear_Task
# **ALSO MEASURED IN NOLAG'S CUSTOM TICKS**
# Here 3 is 30 seconds
scoreboard players set $NoLag nl.Clear_Time 3

# What should the max numbers of entities per block be?
# Default is 25
gamerule maxEntityCramming 12

# The following options are for running "/function nl:halt"
# Set the following options to 0(false) or 1(true)
# Should No Lag clear ground entities when when the server is halted?
scoreboard players set $NoLag nl.Halt_Clear 0
# Should No Lag kill mobs when the server is halted?
scoreboard players set $NoLag nl.Halt_KillMobs 0
# Should No Lag stop block spread (grass spread, crop growth, etc) when the server is halted?
scoreboard players set $NoLag nl.Halt_Growth 1
# Should No Lag stop fire spread when the server is halted?
scoreboard players set $NoLag nl.Halt_Fire 1
# Should No Lag stop mob spawning when the server is halted?
scoreboard players set $NoLag nl.Halt_Spawns 0
# Should No Lag stop mob griefing when the server is halted?
scoreboard players set $NoLag nl.Halt_Grief 1
# Should No Lag stop wandering traders from spawning when the server is halted?
scoreboard players set $NoLag nl.Halt_Traders 1
# Should No Lag stop phantoms from spawning when the server is halted?
scoreboard players set $NoLag nl.Halt_Phantoms 1

