#########################################################
# UHC Project 
# Name    : 1008_3.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Execute as tag=main
# func    : br_stage_6 worldborder settings of map size 1008.
#########################################################

execute if score @s BR_shrink_time matches 1 run worldborder set 240 60
execute if score @s BR_shrink_time matches 2 run worldborder set 240 120
execute if score @s BR_shrink_time matches 4 run worldborder set 240 240
execute if score @s BR_shrink_time matches 5 run worldborder set 240 300