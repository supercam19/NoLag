execute if score @e[tag=NoLag,limit=1] nl.freezeState matches 1 run scoreboard players set @e[tag=NoLag] nl.freezeToggled 1
execute if score @e[tag=NoLag,limit=1] nl.freezeState matches 1 unless score @e[tag=NoLag,limit=1] nl.freezeToggled matches 0 run function nolag:cmd/freeze_players/off
execute if score @e[tag=NoLag,limit=1] nl.freezeState matches 0 unless score @e[tag=NoLag,limit=1] nl.freezeToggled matches 1 run function nolag:cmd/freeze_players/on
scoreboard players set @e[tag=NoLag] nl.freezeToggled 0
