# the purpose of this function is to increase tick performance.
# since there are multiple @e[type=armor_stand,tag=NoLag] in function nolag/functions/tick, and /schedule run as the server everytime, this is used to execute the function as the armor stand
execute as @e[type=armor_stand,tag=NoLag,limit=1] run function nolag:tick