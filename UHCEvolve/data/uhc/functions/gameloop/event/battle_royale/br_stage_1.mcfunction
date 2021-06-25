#########################################################
# UHC Project 
# Name    : br_stage_1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Execute as tag=move
# func    : BR_stage 1, choose a coordinate randomly within 128*128 .
#########################################################

#notifier
execute at @a run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"隨機縮圈模式","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"BR_cool_time"},"color":"red"},{"text":"分鐘後收縮","color":"red"}]}

#get original x, z coordinate
execute store result score @s posX run data get entity @s Pos[0] 10000
execute store result score @s posZ run data get entity @s Pos[2] 10000

#randomly choose new center
execute if score 00000000-0000-0000-0000-000000000001 map_size matches 496 at @s run spreadplayers ~ ~ 1 64 false 00000000-0000-0000-0000-000000000009
execute if score 00000000-0000-0000-0000-000000000001 map_size matches 752 at @s run spreadplayers ~ ~ 1 96 false 00000000-0000-0000-0000-000000000009
execute if score 00000000-0000-0000-0000-000000000001 map_size matches 1008 at @s run spreadplayers ~ ~ 1 128 false 00000000-0000-0000-0000-000000000009
execute as 00000000-0000-0000-0000-000000000009 at @s run tp @s ~ 255 ~

#check validation: new position must be at least 20 blocks aways from old position in both x, y coordinate
execute as 00000000-0000-0000-0000-000000000009 run function uhc:gameloop/event/battle_royale/check_valid

#get new center coordinate
execute store result score 00000000-0000-0000-0000-000000000001 posX run data get entity 00000000-0000-0000-0000-000000000009 Pos[0]
execute store result score 00000000-0000-0000-0000-000000000001 posZ run data get entity 00000000-0000-0000-0000-000000000009 Pos[2]
execute as 00000000-0000-0000-0000-000000000009 store result score @s posX run data get entity @s Pos[0] 10000  
execute as 00000000-0000-0000-0000-000000000009 store result score @s posZ run data get entity @s Pos[2] 10000 

#tp markers
execute at 00000000-0000-0000-0000-000000000009 run tp @e[tag=carry] ~ ~ ~

#danger notifier
bossbar set uhc:safe_x visible true
bossbar set uhc:safe_z visible true
bossbar set uhc:danger_x visible true
bossbar set uhc:danger_z visible true

#scoreboard
scoreboard players operation 00000000-0000-0000-0000-000000000001 border_start += 00000000-0000-0000-0000-000000000001 BR_cool_time
#scoreboard players set 00000000-0000-0000-0000-000000000001 BR_size 184
execute if score 00000000-0000-0000-0000-000000000001 map_size matches 496 run scoreboard players set 安全區半軸長 information 184
execute if score 00000000-0000-0000-0000-000000000001 map_size matches 752 run scoreboard players set 安全區半軸長 information 280
execute if score 00000000-0000-0000-0000-000000000001 map_size matches 1008 run scoreboard players set 安全區半軸長 information 376

#border damage
worldborder damage buffer 1