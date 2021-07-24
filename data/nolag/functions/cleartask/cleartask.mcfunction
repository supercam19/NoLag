# add 1 to the cleartask counter
scoreboard players add $NoLag nl.clearTask 1
# if score nl.clearTask(counts time to cleartask) is equal to score nl.Clear_Task(total time between each cleartask) minus nl.Clear_Warn(how long before clearing should the warning be) then announce items will be cleared in nl.Clear_Warn x 10 seconds
execute if score $NoLag nl.clearWarnOP = $NoLag nl.clearTask run tellraw @a [{"text":"[","color":"gold"}, {"text":"NoLag","color":"red"}, {"text":"] ","color":"gold"}, {"text":"Warning! ","color":"dark_red"}, {"text":"Ground items will be removed in ","color":"red"}, {"score":{"name":"$NoLag","objective":"nl.Clear_Time"},"color":"gold"}, {"text":"0","color":"gold"}, {"text":" seconds!","color":"red"}]

# if score nl.clearTask(counts time for cleartask) is equal to nl.Clear_Task(how long between each cleartask) the run function nolag/function/cleartask/cleartaskrun
execute if score $NoLag nl.clearTask >= $NoLag nl.Clear_Task run function nolag:cleartask/cleartaskrun