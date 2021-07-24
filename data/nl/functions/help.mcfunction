# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# load the first help page
function nolag:help/p_1

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:help'"}]}