#########################################################
# UHC Project 
# Name    : count_down.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/room_tp/
# Loop    : Yes.
# func    : Prepare for room mode.
#########################################################

execute if entity @e[tag=sec,nbt={Age:-1}] run function uhc:gameloop/event/room_tp/second

execute if entity @s[scores={timer_sec=..0}] run function uhc:gameloop/event/room_tp/teleport_1
execute if entity @s[scores={timer_sec=..0}] run kill @e[tag=sec]
execute if entity @s[scores={timer_sec=..0}] run setblock ~ ~ ~ air replace