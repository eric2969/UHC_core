#########################################################
# UHC Project 
# Name    : self_check_1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : Yes, if function on.
# func    : Calculate distance to center. Part 1.
#########################################################

#bossbar visible
bossbar set uhc:safe_x players @a[tag=!danger_x]
bossbar set uhc:danger_x players @a[tag=danger_x]
bossbar set uhc:safe_z players @a[tag=!danger_z]
bossbar set uhc:danger_z players @a[tag=danger_z]

#calculate difference
scoreboard players operation @a BR_xdiff -= 00000000-0000-0000-0000-000000000001 posX
scoreboard players operation @a BR_zdiff -= 00000000-0000-0000-0000-000000000001 posZ

#take absolute value
scoreboard players operation @a[scores={BR_xdiff=..-1}] BR_xdiff *= negative_I n_I
scoreboard players operation @a[scores={BR_zdiff=..-1}] BR_zdiff *= negative_I n_I