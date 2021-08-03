# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# reset data
execute if score $NoLag nl.Auto_Clear matches 1 run data modify storage nolag Modules insert 0 value "Enabled"
execute unless score $NoLag nl.Auto_Clear matches 1 run data modify storage nolag Modules insert 0 value "Disabled"
execute if score $NoLag nl.No_AI matches 1 run data modify storage nolag Modules insert 1 value "Enabled"
execute unless score $NoLag nl.No_AI matches 1 run data modify storage nolag Modules insert 1 value "Disabled"
execute if score $NoLag nl.No_Collision matches 1 run data modify storage nolag Modules insert 2 value "Enabled"
execute unless score $NoLag nl.No_Collision matches 1 run data modify storage nolag Modules insert 2 value "Disabled"

# modules menu
tellraw @s ["",{"text":"------------","color":"yellow"},{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"]","color":"gold"},{"text":"------------","color":"yellow"},{"text":"\n"},{"text":"NoLag modules menu","color":"gray"},{"text":"\n\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.Auto_Clear 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":"+","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.Auto_Clear 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":"]","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.Auto_Clear 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":" "},{"text":"[","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.Auto_Clear 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.Auto_Clear 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":"]","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.Auto_Clear 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":" ClearLag: ","color":"red"},{"nbt":"Modules[0]","storage":"nolag","color":"gold"},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_AI 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":"+","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_AI 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":"]","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_AI 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":" "},{"text":"[","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_AI 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_AI 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":"]","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_AI 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":" NoAI: ","color":"dark_red"},{"nbt":"Modules[1]","storage":"nolag","color":"gold"},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_Collision 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":"+","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_Collision 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":"]","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_Collision 1"},"hoverEvent":{"action":"show_text","contents":"enable"}},{"text":" "},{"text":"[","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_Collision 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":"-","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_Collision 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":"]","clickEvent":{"action":"run_command","value":"/scoreboard players set $NoLag nl.No_Collision 0"},"hoverEvent":{"action":"show_text","contents":"disable"}},{"text":" NoCollision: ","color":"red"},{"nbt":"Modules[2]","storage":"nolag","color":"gold"},{"text":" \n\nUpdate","color":"green","clickEvent": {"action":"run_command","value":"/function nolag:tick/reload"}},{"text":"\n\n[","color":"red","clickEvent":{"action":"run_command","value":"/function nolag:debug/debugmenu"}},{"text":"Info","color":"gold","clickEvent":{"action":"run_command","value":"/function nolag:debug/debugmenu"}},{"text":"]","color":"red","clickEvent":{"action":"run_command","value":"/function nolag:debug/debugmenu"}},{"text":"  "},{"text":"[","color":"red","clickEvent":{"action":"run_command","value":"/function nolag:debug/modules"}},{"text":"Modules","color":"yellow","clickEvent":{"action":"run_command","value":"/function nolag:debug/modules"}},{"text":"]","color":"red","clickEvent":{"action":"run_command","value":"/function nolag:debug/modules"}}]