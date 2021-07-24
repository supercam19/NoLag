# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# see nolag/functions/uninstall_confirm.mcfunction for more details
tellraw @s ["",{"text":"[","color":"gold"},{"text":"NoLag","color":"red"},{"text":"] ","color":"gold"},{"text":"Are you sure you want to uninstall? "},{"text":"Uninstall","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/function nolag:uninstall_confirm"}}]

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:uninstall'"}]}