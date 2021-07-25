# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# store debug values
execute store result score $NoLag nl.onlinePlayers run execute if entity @a
execute store result score $NoLag nl.datapacks run datapack list

# debug message
tellraw @s ["",{"text":"------------","color":"yellow"},{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"]","color":"gold"},{"text":"------------","color":"yellow"},{"text":"\n"},{"text":"NoLag debug menu. For debug msgs:\n/tag @s add nl.debug","color":"gray"},{"text":"\n\n"},{"text":"NoLag Version: ","color":"dark_red"},{"nbt":"NoLag[].Version","storage":"nolag","color":"gold"},{"text":"\nNoLag Extensions: ","color":"red"},{"nbt":"NoLag[].Extensions","storage":"nolag","color":"gold"},{"text":"\n"},{"text":"MC Version: ","color":"dark_red"},{"nbt":"DataVersion","entity":"@s","color":"gold"},{"text":"\n"},{"text":"Players Online: ","color":"red"},{"score":{"name":"$NoLag","objective":"nl.onlinePlayers"},"color":"gold"},{"text":"\n"},{"text":"Total Datapacks: ","color":"dark_red"},{"score":{"name":"$NoLag","objective":"nl.datapacks"},"color":"gold"},{"text":"\n"},{"text":"Errors Fixed: ","color":"red"},{"score":{"name":"$NoLag","objective":"nl.errorsFixed"},"color":"gold"}]