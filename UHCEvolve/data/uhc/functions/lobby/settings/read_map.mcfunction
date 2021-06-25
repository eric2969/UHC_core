#########################################################
# UHC Project 
# Name    : read_map.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : Yes. While reading map.
# func    : Timing and teleport the player per 5 ticks
#########################################################

#initial
execute if entity @s[scores={read_map_state=0}] run function uhc:lobby/settings/map_gen/map_init
scoreboard players set @s[scores={read_map_state=0}] read_map_state 1

#timer
scoreboard players remove @s timer0_25 1
execute as @p[tag=read_map] at @s run tp @s ~ 128 ~ ~ 90
execute if score @s timer0_25 matches ..0 as @p[tag=read_map] run function uhc:lobby/settings/map_gen/map_tp
scoreboard players set @s[scores={timer0_25=..0}] timer0_25 5

#progress line
execute store result bossbar uhc:read_progress value run scoreboard players get @s corner

#stop condition
execute if score @s Xchunk > @s width_chunk run tag @s add stop_map
execute if score @s Xchunk < @s inv_width_chunk run tag @s add stop_map
execute if score @s Zchunk > @s width_chunk run tag @s add stop_map
execute if score @s Zchunk < @s inv_width_chunk run tag @s add stop_map

#stop
execute if entity @s[tag=stop_map] run function uhc:lobby/settings/map_gen/map_stop