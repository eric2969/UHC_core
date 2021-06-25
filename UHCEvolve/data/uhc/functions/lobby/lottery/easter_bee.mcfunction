#########################################################
# UHC Project 
# Name    : easter_bee.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : No.
# func    : Lottery end easter "bees"
#########################################################

execute at @e[tag=lottery] run particle minecraft:happy_villager ~ ~1 ~ .5 .5 .5 1 20 force

execute at @e[tag=lottery] run summon bee ~ ~1.5 ~ {Tags:[bee,bee_easter],Rotation:[180.0f,0.0f]}
execute at @e[tag=lottery] run summon bee ~ ~1.5 ~ {Tags:[bee,bee_easter],Rotation:[180.0f,0.0f]}
execute at @e[tag=lottery] run summon bee ~ ~1.5 ~ {Tags:[bee,bee_easter],Rotation:[180.0f,0.0f]}
execute at @e[tag=lottery] run summon bee ~ ~1.5 ~ {Tags:[bee,bee_easter],Rotation:[180.0f,0.0f]}

effect give @e[tag=bee_easter] minecraft:resistance 10 9 true

schedule function uhc:lobby/lottery/easter_bee_clear 10s