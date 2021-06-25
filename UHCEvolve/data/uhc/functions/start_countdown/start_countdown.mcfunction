#########################################################
# UHC Project 
# Name    : start_countdown.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : Yes. Execute as tag=main
# func    : Prepare to start.
#########################################################

tag @a remove gold_head_normal
execute at @e[tag=lottery] run setblock ~ ~1 ~ air
execute if entity @e[tag=sec,nbt={Age:-1}] run function uhc:start_countdown/second

#setting check
execute if score 00000000-0000-0000-0000-000000000004 border_mode matches 1 if score @s[scores={border_on=1}] border_start = @s[scores={room=1}] room_time run function uhc:start_countdown/tp_time_violation
execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 if entity @s[scores={border_on=1,map_size=1009..}] run function uhc:start_countdown/map_size_not_match
execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 if entity @s[scores={border_on=1,room=1}] run function uhc:start_countdown/br_room_violation
execute if score @s betray matches 1 if score @s betray_tp <= @s betray_time run function uhc:start_countdown/betray_time_violation

scoreboard players operation temp betray_tp = @s betray_tp
scoreboard players operation temp betray_tp += const3 III
scoreboard players operation temp border_start = @s border_start
scoreboard players operation temp border_start += @s BR_cool_time
scoreboard players operation temp border_start += @s BR_cool_time
scoreboard players operation temp border_start += @s BR_shrink_time
scoreboard players operation temp border_start += @s BR_shrink_time
execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 if entity @s[scores={border_on=1}] if score temp border_start <= temp betray_tp run function uhc:start_countdown/betray_br_violation_1
execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 0 if entity @s[scores={border_on=1}] if score @s border_start < @s betray_time run function uhc:start_countdown/betray_br_violation_0

execute if score @s slow_fall matches 0 if score @s timer_sec matches 1 run effect give @a levitation 1 60 true
execute if score @s slow_fall matches 0 if score @s timer_sec matches 1 as @a at @s run playsound minecraft:entity.firework_rocket.launch block @s ~ ~ ~ 0.75 0.2
execute if score @s timer_sec matches ..0 run function uhc:go
execute if score @s timer_sec matches ..0 run kill @e[tag=sec]
execute if score @s timer_sec matches ..0 run setblock ~ ~ ~ air replace