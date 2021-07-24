# disable and re-enable command feedback
gamerule sendCommandFeedback false
schedule function nolag:sendcommandfeedback 1t
# count all entities to be cleared
execute as @e[type=#nolag_config:clearprojectiles] run scoreboard players add $NoLag nl.clearCount 1

# kill the entities
kill @e[type=#nolag_config:clearprojectiles]

# display how many were killed
tellraw @a[tag=!nl.blacklist,tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"$NoLag","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities!","color":"green"}]

# reset entity kill counter
scoreboard players set $NoLag nl.clearCount 0

tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] ","color":"gray","extra":[{"selector":"@s"},{"text":" has issued command '/function nl:clearprojectiles'"}]}