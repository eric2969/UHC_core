#########################################################
# UHC Project 
# Name    : br_stage_6.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Execute as tag=move
# func    : BR_stage 6, calculate x, z diff & start moving .
#########################################################

#notifier
execute at @a run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"隨機縮圈模式","color":"gold"},{"text":" | ","color":"white"},{"text":"第三階段啟動","color":"red"}]}

#x, z diff calculate
scoreboard players operation @s BR_xdiff = 00000000-0000-0000-0000-000000000009 posX
scoreboard players operation @s BR_xdiff -= @s posX
scoreboard players operation @s BR_zdiff = 00000000-0000-0000-0000-000000000009 posZ
scoreboard players operation @s BR_zdiff -= @s posZ

#factorization
scoreboard players operation @s BR_xdiff *= 00000000-0000-0000-0000-000000000001 BR_factor
scoreboard players operation @s BR_zdiff *= 00000000-0000-0000-0000-000000000001 BR_factor

#scoreboard
scoreboard players set 00000000-0000-0000-0000-000000000001 BR_move 1
scoreboard players operation 00000000-0000-0000-0000-000000000001 border_start += 00000000-0000-0000-0000-000000000001 BR_shrink_time

#start moving
data merge entity @s {NoGravity:0}
execute as 00000000-0000-0000-0000-000000000001 if score @s map_size matches 496 run function uhc:gameloop/event/battle_royale/border/496_3
execute as 00000000-0000-0000-0000-000000000001 if score @s map_size matches 752 run function uhc:gameloop/event/battle_royale/border/752_3
execute as 00000000-0000-0000-0000-000000000001 if score @s map_size matches 1008 run function uhc:gameloop/event/battle_royale/border/1008_3

#border damage
worldborder damage amount 0.2