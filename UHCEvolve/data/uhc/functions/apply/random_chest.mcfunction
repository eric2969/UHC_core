#########################################################
# UHC Project 
# Name    : random_chest.mcfunction 
# Made by : jelly99709
# Path    : /apply/
# Loop    : No. 
# func    : Spread random chests.
#########################################################

execute if score @s chest_num matches 5.. at 00000000-0000-0000-0000-000000000002 run function uhc:apply/summon_chest
execute if score @s chest_num matches 10.. at 00000000-0000-0000-0000-000000000002 run function uhc:apply/summon_chest
execute if score @s chest_num matches 15.. at 00000000-0000-0000-0000-000000000002 run function uhc:apply/summon_chest
execute if score @s chest_num matches 20.. at 00000000-0000-0000-0000-000000000002 run function uhc:apply/summon_chest
execute if score @s chest_num matches 25.. at 00000000-0000-0000-0000-000000000002 run function uhc:apply/summon_chest

execute at @s[scores={map_size=496}] run spreadplayers ~ ~ 64 232 false @e[tag=chest]
execute at @s[scores={map_size=752}] run spreadplayers ~ ~ 64 360 false @e[tag=chest]
execute at @s[scores={map_size=1008}] run spreadplayers ~ ~ 64 488 false @e[tag=chest]
execute at @s[scores={map_size=1264}] run spreadplayers ~ ~ 64 616 false @e[tag=chest]
execute at @s[scores={map_size=1520}] run spreadplayers ~ ~ 64 744 false @e[tag=chest]

execute at @e[tag=chest] run setblock ~ ~ ~ chest{Lock:"§ghsjdgf",LootTable:"uhc:random_chest"} replace