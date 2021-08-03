schedule clear nolag:tick/cleartask
schedule clear nolag:tick/noai
schedule clear nolag:tick/nocollision

execute if score $NoLag nl.Auto_Clear matches 1 run function nolag:tick/cleartask
execute if score $NoLag nl.No_AI matches 1 run function nolag:tick/noai
execute if score $NoLag nl.No_Collision matches 1 run function nolag:tick/nocollision

tellraw @s "\n\n\n"
function nolag:debug/modules