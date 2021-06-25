#########################################################
# UHC Project 
# Name    : shrink_start.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event
# Loop    : No.
# func    : Border sink start.
#########################################################

scoreboard players add @s border_on 1

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"邊界收縮","color":"gold"},{"text":" | ","color":"white"},{"text":"啟動","color":"red"}]}

execute if entity @s[scores={border_end=16,border_move=20}] run worldborder set 16 1200
execute if entity @s[scores={border_end=16,border_move=30}] run worldborder set 16 1800
execute if entity @s[scores={border_end=16,border_move=40}] run worldborder set 16 2400
execute if entity @s[scores={border_end=16,border_move=50}] run worldborder set 16 3000
execute if entity @s[scores={border_end=16,border_move=60}] run worldborder set 16 3600

execute if entity @s[scores={border_end=48,border_move=20}] run worldborder set 48 1200
execute if entity @s[scores={border_end=48,border_move=30}] run worldborder set 48 1800
execute if entity @s[scores={border_end=48,border_move=40}] run worldborder set 48 2400
execute if entity @s[scores={border_end=48,border_move=50}] run worldborder set 48 3000
execute if entity @s[scores={border_end=48,border_move=60}] run worldborder set 48 3600

execute if entity @s[scores={border_end=80,border_move=20}] run worldborder set 80 1200
execute if entity @s[scores={border_end=80,border_move=30}] run worldborder set 80 1800
execute if entity @s[scores={border_end=80,border_move=40}] run worldborder set 80 2400
execute if entity @s[scores={border_end=80,border_move=50}] run worldborder set 80 3000
execute if entity @s[scores={border_end=80,border_move=60}] run worldborder set 80 3600

execute if entity @s[scores={border_end=112,border_move=20}] run worldborder set 112 1200
execute if entity @s[scores={border_end=112,border_move=30}] run worldborder set 112 1800
execute if entity @s[scores={border_end=112,border_move=40}] run worldborder set 112 2400
execute if entity @s[scores={border_end=112,border_move=50}] run worldborder set 112 3000
execute if entity @s[scores={border_end=112,border_move=60}] run worldborder set 112 3600

scoreboard players operation @s border_move += @s border_start