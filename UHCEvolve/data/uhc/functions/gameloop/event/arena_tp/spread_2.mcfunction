###################################################
# UHC Project 
# Name    : spread_2.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/arena_tp/spread_2
# Loop    : No.
# func    : To spread players for arena mode.
###################################################

execute at @s run tp @a[nbt=!{Dimension:0}] ~ 120 ~ 

execute at @s[scores={border_end=16}] in overworld run spreadplayers ~ ~ 0 7 true @a[team=!solo]
execute at @s[scores={border_end=48}] in overworld run spreadplayers ~ ~ 0 23 true @a[team=!solo]
execute at @s[scores={border_end=80}] in overworld run spreadplayers ~ ~ 0 39 true @a[team=!solo]
execute at @s[scores={border_end=112}] in overworld run spreadplayers ~ ~ 0 55 true @a[team=!solo]

execute at @s[scores={border_end=16}] in overworld run spreadplayers ~ ~ 0 7 false @a[team=solo]
execute at @s[scores={border_end=48}] in overworld run spreadplayers ~ ~ 0 23 false @a[team=solo]
execute at @s[scores={border_end=80}] in overworld run spreadplayers ~ ~ 0 39 false @a[team=solo]
execute at @s[scores={border_end=112}] in overworld run spreadplayers ~ ~ 0 55 false @a[team=solo]

execute at @s[scores={border_end=16}] in overworld run worldborder set 16
execute at @s[scores={border_end=48}] in overworld run worldborder set 48
execute at @s[scores={border_end=80}] in overworld run worldborder set 80
execute at @s[scores={border_end=112}] in overworld run worldborder set 112

effect give @a resistance 3 9 true