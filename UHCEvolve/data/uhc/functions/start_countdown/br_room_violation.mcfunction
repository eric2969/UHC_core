#########################################################
# UHC Project 
# Name    : br_room_violation.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

execute as @a[gamemode=creative] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"ERROR!","color":"dark_red"},{"text":" | ","color":"white"},{"text":"請勿同時開啟隨機縮圈模式與決戰房間!!","color":"gold"}]}

execute at @e[tag=sub3] run setblock ~ ~ ~ air replace
kill @e[tag=sec]