#########################################################
# UHC Project 
# Name    : sink_end.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event
# Loop    : No.
# func    : Border sink complete.
#########################################################

scoreboard players add @s border_on 1

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"邊界收縮","color":"gold"},{"text":" | ","color":"white"},{"text":"完成","color":"red"}]}

worldborder damage buffer 0