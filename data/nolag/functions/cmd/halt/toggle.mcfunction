execute if score @e[tag=NoLag,limit=1] nl.haltState matches 1 run scoreboard players set @e[tag=NoLag] nl.haltToggled 1
execute if score @e[tag=NoLag,limit=1] nl.haltState matches 1 unless score @e[tag=NoLag,limit=1] nl.haltToggled matches 0 run function nolag:cmd/halt/off
execute if score @e[tag=NoLag,limit=1] nl.haltState matches 0 unless score @e[tag=NoLag,limit=1] nl.haltToggled matches 1 run function nolag:cmd/halt/on
scoreboard players set @e[tag=NoLag] nl.haltToggled 0
