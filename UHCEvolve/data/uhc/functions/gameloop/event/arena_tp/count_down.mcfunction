#########################################################
# UHC Project 
# Name    : count_down.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/arena_tp/
# Loop    : Yes.
# func    : Prepare for arena mode.
#########################################################

execute if entity @e[tag=sec,nbt={Age:-1}] run function uhc:gameloop/event/arena_tp/second

execute if entity @s[scores={timer_sec=..0}] run function uhc:gameloop/event/arena_tp/spread_2
execute if entity @s[scores={timer_sec=..0}] run kill @e[tag=sec]
execute if entity @s[scores={timer_sec=..0}] run setblock ~ ~ ~ air replace