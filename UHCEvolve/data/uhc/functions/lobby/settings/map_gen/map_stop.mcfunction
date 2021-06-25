#########################################################
# UHC Project 
# Name    : map_stop.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen
# Loop    : No.
# func    : End pre_reading map process.
#########################################################

tellraw @a {"text":"UHCE >>> ","color":"gray","extra":[{"text":"地圖讀取完畢!!","color":"gold"}]}

scoreboard players set @e[tag=main] Xchunk 0
scoreboard players set @e[tag=main] Zchunk 0
scoreboard players set @e[tag=main] corner 1
scoreboard players set @e[tag=main] inv_corner -1
scoreboard players set @e[tag=main] timer0_25 5
scoreboard players set @e[tag=main] read_map_state 0

tp @a[tag=read_map] 00000000-0000-0000-0000-000000000001

tag @a[tag=read_map] remove read_map
tag @e[tag=stop_map] remove stop_map

bossbar set uhc:read_progress visible false
#bossbar remove uhc:read_progress

execute at @e[tag=sub2] run setblock ~ ~ ~ air replace