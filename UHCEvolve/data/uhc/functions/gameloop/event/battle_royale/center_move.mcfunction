#########################################################
# UHC Project 
# Name    : center_move.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : Yes. Called by main_control, executed by tag=move.
# func    : Moving border center.
#########################################################

#Motion Merge
execute store result entity @s Motion[0] double 0.0000000041666667 run scoreboard players get @s BR_xdiff
execute store result entity @s Motion[1] double 0.0000000000000000 run scoreboard players get @s BR_xdiff
execute store result entity @s Motion[2] double 0.0000000041666667 run scoreboard players get @s BR_zdiff

#center
worldborder center ~ ~