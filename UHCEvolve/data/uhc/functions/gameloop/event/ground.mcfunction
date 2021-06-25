#########################################################
# UHC Project 
# Name    : ground.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : No.
# func    : Ground limit.
#########################################################

scoreboard players add @s ground_limit 1
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_height"},"color":"red"},{"text":"層","color":"red"}]}