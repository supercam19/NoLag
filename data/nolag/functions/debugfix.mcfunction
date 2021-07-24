# kill all armor stands, then summon a new one.
# function ran from nolag/functions/debug.mcfunction
kill @e[type=armor_stand,tag=NoLag]
summon armor_stand 0 250 0 {Invisible:1,NoGravity:1,Invulnerable:1,Tags:[NoLag]}
tellraw @a[tag=nl.debug] {"text":"[NoLag Debug] Fixed 1 issue","color":"gray"}
scoreboard players add $NoLag nl.errorsFixed 1