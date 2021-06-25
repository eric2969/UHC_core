#########################################################
# UHC Project 
# Name    : sky.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : No.
# func    : Sky limit.
#########################################################

scoreboard players add @s sky_limit 1
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"red"},{"text":"層","color":"red"}]}