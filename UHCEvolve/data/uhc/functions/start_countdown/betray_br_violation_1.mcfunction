#########################################################
# UHC Project 
# Name    : betray_br_violation_1.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

execute as @a[gamemode=creative] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"ERROR!","color":"dark_red"},{"text":" | ","color":"white"},{"text":"背叛者傳送時間需早於隨機縮圈第二階段!!","color":"gold"}]}

execute at @e[tag=sub3] run setblock ~ ~ ~ air replace
kill @e[tag=sec]