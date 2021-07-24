# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# run the cleartaskrun function. see nolag/functions/clearlag/cleartaskrun.mcfunction for details
function nolag:cleartask/cleartaskrun

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:clearlag'"}]}