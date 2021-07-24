# count items to be cleared
execute as @e[type=#nolag_config:cleararrow,nbt={inGround: 1b}] run scoreboard players add $NoLag nl.clearCount 1
execute as @e[type=item] run scoreboard players add $NoLag nl.clearCount 1

# announce how many entities were cleared
tellraw @a[tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Cleared ","color":"green"}, {"score":{"name":"$NoLag","objective":"nl.clearCount"},"color":"gold"}, {"text":" entities!","color":"green"}]
# kill the entities
kill @e[type=item]
kill @e[type=#nolag_config:cleararrow,nbt={inGround: 1b}]

# reset the counters
scoreboard players set $NoLag nl.clearCount 0
scoreboard players set $NoLag nl.clearTask 0
