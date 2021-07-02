kill @e[tag=freezePlayer]
effect give @a resistance 2 255 true
tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"You are no longer ","color":"green"}, {"text":"frozen","color":"aqua"}]
gamemode survival @a[scores={nl.gamemode=0}]
gamemode creative @a[scores={nl.gamemode=1}]
gamemode adventure @a[scores={nl.gamemode=2}]
gamemode spectator @a[scores={nl.gamemode=3}]
