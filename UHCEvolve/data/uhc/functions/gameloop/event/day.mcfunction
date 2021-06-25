#########################################################
# UHC Project 
# Name    : day.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : No.
# func    : Stop daylight cycle.
#########################################################

scoreboard players add @s day_stop 1

gamerule doDaylightCycle false

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
execute if score 00000000-0000-0000-0000-000000000005 day_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"永晝","color":"red"}]}
execute if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"永夜","color":"red"}]}