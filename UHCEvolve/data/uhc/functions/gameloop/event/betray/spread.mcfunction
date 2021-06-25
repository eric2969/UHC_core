#########################################################
# UHC Project 
# Name    : spread.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute in schedule
# func    : Select betrayers.
#########################################################

effect give @a[team=betrayer] resistance 15 9 true
execute at @e[tag=center] run spreadplayers ~ ~ 0 56 true @a[team=betrayer]

#kill @e[tag=set]