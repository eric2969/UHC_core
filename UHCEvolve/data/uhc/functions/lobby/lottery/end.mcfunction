#########################################################
# UHC Project 
# Name    : end.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : No.
# func    : Lottery end
#########################################################

schedule function uhc:lobby/lottery/end_sound 15t
scoreboard players set @e[tag=lottery] lottery_count 0

execute if entity @e[tag=lottery,predicate=uhc:easter_bee] run schedule function uhc:lobby/lottery/easter_bee 15t