#########################################################
# UHC Project 
# Name    : branch_count.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : Yes. Execute by players with stone_penalty >= 1
# func    : Count total stone and deepslate mined.
#########################################################

scoreboard players add @s temp_stone 1
scoreboard players add @s stone_penalty 1
scoreboard players remove @s stone_penalty_d 1