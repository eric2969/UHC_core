#########################################################
# UHC Project 
# Name    : monster_1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/monster/
# Loop    : No.
# func    : Clear Monster.
#########################################################

#difficulty peaceful
gamerule doMobSpawning false
scoreboard players add @s monster_clean 1
scoreboard players set @s rand_silverfish 0
tag @a remove silverfish

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"怪物","color":"gold"},{"text":" | ","color":"white"},{"text":"清除","color":"red"}]}

execute as @e[type=ender_dragon] at @s run tp @s ~ -999999 ~
execute as @e[type=wither] at @s run tp @s ~ -999999 ~
#execute if entity @e[tag=main,scores={diff=1}] run difficulty easy
#execute if entity @e[tag=main,scores={diff=2}] run difficulty normal
#execute if entity @e[tag=main,scores={diff=3}] run difficulty hard