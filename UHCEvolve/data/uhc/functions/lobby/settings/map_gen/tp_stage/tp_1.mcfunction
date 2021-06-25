#########################################################
# UHC Project 
# Name    : tp_1.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen/tp_stage
# Loop    : Yes. While reading map.
# func    : tp players +Z direction
#########################################################

execute at @s if score 00000000-0000-0000-0000-000000000001 Zchunk < 00000000-0000-0000-0000-000000000001 corner run tp @s ~ 128 ~16
execute at @s if score 00000000-0000-0000-0000-000000000001 Zchunk < 00000000-0000-0000-0000-000000000001 corner run scoreboard players add 00000000-0000-0000-0000-000000000001 Zchunk 1
execute at @s if score 00000000-0000-0000-0000-000000000001 Zchunk = 00000000-0000-0000-0000-000000000001 corner run scoreboard players set 00000000-0000-0000-0000-000000000001 read_map_state 2
execute at @s if score 00000000-0000-0000-0000-000000000001 Zchunk = 00000000-0000-0000-0000-000000000001 corner run scoreboard players add 00000000-0000-0000-0000-000000000001 corner 1
