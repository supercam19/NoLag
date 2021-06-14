gamemode survival @a
kill @e[tag=freezePlayer]
effect give @a resistance 2 255 true
tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"You are no longer ","color":"green"}, {"text":"frozen","color":"aqua"}]