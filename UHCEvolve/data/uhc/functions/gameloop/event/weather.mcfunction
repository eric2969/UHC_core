#########################################################
# UHC Project 
# Name    : day.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : No.
# func    : Stop weather cycle.
#########################################################

scoreboard players add @s weather_fix 1

gamerule doWeatherCycle false

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
execute if score 00000000-0000-0000-0000-00000000000d weather_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"晴朗","color":"red"}]}
execute if score 00000000-0000-0000-0000-00000000000e weather_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"下雨","color":"red"}]}
execute if score 00000000-0000-0000-0000-00000000000f weather_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"雷暴","color":"red"}]}

execute if score 00000000-0000-0000-0000-00000000000d weather_mode matches 1 run weather clear 999999
execute if score 00000000-0000-0000-0000-00000000000e weather_mode matches 1 run weather rain 999999
execute if score 00000000-0000-0000-0000-00000000000f weather_mode matches 1 run weather thunder 999999