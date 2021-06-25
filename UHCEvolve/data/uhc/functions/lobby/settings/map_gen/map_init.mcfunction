#########################################################
# UHC Project 
# Name    : map_init.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen
# Loop    : No.
# func    : Teleport player to the first two chunks.
#########################################################

tellraw @a {"text":"UHCE >>> ","color":"gray","extra":[{"text":"開始讀取地圖...","color":"gold"}]}

bossbar set uhc:read_progress visible true
execute if score @s width_chunk matches 15 run bossbar set uhc:read_progress max 17
execute if score @s width_chunk matches 31 run bossbar set uhc:read_progress max 33
execute if score @s width_chunk matches 47 run bossbar set uhc:read_progress max 51
execute if score @s width_chunk matches 63 run bossbar set uhc:read_progress max 65
execute if score @s width_chunk matches 79 run bossbar set uhc:read_progress max 81
bossbar set uhc:read_progress value 0
bossbar set uhc:read_progress players @a

execute at @s run tp @p[tag=read_map] ~ 128 ~
execute as @p[tag=read_map] at @s run tp @s ~16 128 ~
scoreboard players add @s Xchunk 1