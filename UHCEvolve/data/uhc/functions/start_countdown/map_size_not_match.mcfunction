#########################################################
# UHC Project 
# Name    : map_size_not_match.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : No.
# func    : Cancel the start_countdown function.
#########################################################

execute as @a[gamemode=creative] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"ERROR!","color":"dark_red"},{"text":" | ","color":"white"},{"text":"若要開啟隨機縮圈模式，地圖大小至多為1008格!!","color":"gold"}]}

execute at @e[tag=sub3] run setblock ~ ~ ~ air replace
kill @e[tag=sec]