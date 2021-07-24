# rerun the tick every 10 seconds
schedule function nolag:executetick 10s

# if cleartask is enabled in the config run nolag/functions/cleartask/cleartask
execute if score $NoLag nl.Auto_Clear matches 1 run function nolag:cleartask/cleartask

execute if score $NoLag nl.No_AI matches 1 run function nolag:noai/main

execute if score $NoLag nl.No_Collision matches 1 run function nolag:stopcollision/main
