#########################################################
# UHC Project 
# Name    : tp_3.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen/tp_stage
# Loop    : Yes. While reading map.
# func    : tp players -Z direction
#########################################################

execute at @s if score @e[tag=main,limit=1] Zchunk > @e[tag=main,limit=1] inv_corner run tp @s ~ 128 ~-16
execute at @s if score @e[tag=main,limit=1] Zchunk > @e[tag=main,limit=1] inv_corner run scoreboard players remove @e[tag=main] Zchunk 1
execute at @s if score @e[tag=main,limit=1] Zchunk = @e[tag=main,limit=1] inv_corner run scoreboard players set @e[tag=main] read_map_state 4
execute at @s if score @e[tag=main,limit=1] Zchunk = @e[tag=main,limit=1] inv_corner run scoreboard players remove @e[tag=main] inv_corner 1
