#########################################################
# UHC Project 
# Name    : tp_4.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen/tp_stage
# Loop    : Yes. While reading map.
# func    : tp players +X direction
#########################################################

execute at @s if score @e[tag=main,limit=1] Xchunk < @e[tag=main,limit=1] corner run tp @s ~16 128 ~
execute at @s if score @e[tag=main,limit=1] Xchunk < @e[tag=main,limit=1] corner run scoreboard players add @e[tag=main] Xchunk 1
execute at @s if score @e[tag=main,limit=1] Xchunk = @e[tag=main,limit=1] corner run scoreboard players set @e[tag=main] read_map_state 1