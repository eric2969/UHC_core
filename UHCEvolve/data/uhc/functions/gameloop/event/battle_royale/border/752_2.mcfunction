#########################################################
# UHC Project 
# Name    : 752_2.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Execute as tag=main
# func    : br_stage_4 worldborder settings of map size 752.
#########################################################

execute if score @s BR_shrink_time matches 1 run worldborder set 368 60
execute if score @s BR_shrink_time matches 2 run worldborder set 368 120
execute if score @s BR_shrink_time matches 4 run worldborder set 368 240
execute if score @s BR_shrink_time matches 5 run worldborder set 368 300