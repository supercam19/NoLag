# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# open tps menu
tellraw @s ["",{"text":"------","color":"yellow"},{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"]","color":"gold"},{"text":"------","color":"yellow"},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/debug start"},"hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":"\u25b6","color":"green","clickEvent":{"action":"run_command","value":"/debug start"},"hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":"]","clickEvent":{"action":"run_command","value":"/debug start"},"hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":" ","hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":"Start TPS Test","color":"green"},{"text":"\n"},{"text":"[","clickEvent":{"action":"run_command","value":"/debug stop"},"hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":"\u2b24","color":"red","clickEvent":{"action":"run_command","value":"/debug stop"},"hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":"]","clickEvent":{"action":"run_command","value":"/debug stop"},"hoverEvent":{"action":"show_text","contents":"*click here"}},{"text":" End TPS Test","color":"red"},{"text":"\n"},{"text":"  20 Ticks per second\n  or higher is perfect","color":"yellow"}, {"text":"\n-------------------","color":"yellow"}]

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:tps'"}]}