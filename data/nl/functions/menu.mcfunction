# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
tellraw @s ["",{"text":"------------","color":"yellow"},{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"]","color":"gold"},{"text":"------------","color":"yellow"},{"text":"\n"},{"text":"| ","color":"yellow"},{"text":"NoLag by supercam19","color":"gray","clickEvent":{"action":"open_url","value":"https://www.github.com/supercam19/NoLag"}},{"text":"\n"},{"text":"|","color":"yellow"},{"text":" \n"},{"text":"|","color":"yellow"},{"text":" "},{"text":"Help Menu ","color":"gold","clickEvent":{"action":"run_command","value":"/function nolag:help/p_1"}},{"text":">>","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nolag:help/p_1"}},{"text":"\n"},{"text":"|","color":"yellow"},{"text":" "},{"text":"Tag Menu ","color":"yellow","clickEvent":{"action":"run_command","value":"/function nl:tag"}},{"text":">>","color":"red","clickEvent":{"action":"run_command","value":"/function nl:tag"}},{"text":"\n"},{"text":"| ","color":"yellow"},{"text":"Debug ","color":"gold","clickEvent":{"action":"run_command","value":"/function nolag:debugmenu"}},{"text":">>","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nolag:debugmenu"}},{"text":"\n"},{"text":"| ","color":"yellow"},{"text":"Github ","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.github.com/supercam19"}},{"text":">>","color":"red","clickEvent":{"action":"open_url","value":"https://www.github.com/supercam19"}}]

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:menu'"}]}