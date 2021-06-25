#########################################################
# UHC Project 
# Name    : room_setup.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event
# Loop    : No.
# func    : Arena mode start.
#########################################################

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"決戰房間","color":"gold"},{"text":" | ","color":"white"},{"text":"準備傳送","color":"red"}]}

scoreboard players set @s timer_sec 31
execute at @e[tag=sub1] run summon area_effect_cloud ~ ~ ~ {Tags:[sec],Age:-21,Particle:"block air"}
execute at @e[tag=sub1] run setblock ~ ~ ~ repeating_command_block{Command:"execute as 00000000-0000-0000-0000-000000000001 run function uhc:gameloop/event/room_tp/count_down",auto:1,TrackOutput:0b} replace