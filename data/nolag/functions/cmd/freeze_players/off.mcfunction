# kill the armor stands
kill @e[type=armor_stand,tag=nl.freezePlayer]
# give resistance to all players, incase they were falling when frozen
effect give @a resistance 2 255 true
# announce you are unfrozen
tellraw @a[tag=!nl.completeblacklist] [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"You are no longer ","color":"green"}, {"text":"frozen","color":"aqua"}]
# reset players gamemode to the one they had before freezing
gamemode survival @a[scores={nl.gamemode=0}]
gamemode creative @a[scores={nl.gamemode=1}]
gamemode adventure @a[scores={nl.gamemode=2}]
gamemode spectator @a[scores={nl.gamemode=3}]
# set nl.areFrozen to false, players are no longer frozen
scoreboard players set $NoLag nl.areFrozen 0
# sets whether or not NoLag can modify the players freeze status to false
scoreboard players set $NoLag nl.freezeToggled 0