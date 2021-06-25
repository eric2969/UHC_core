#########################################################
# UHC Project 
# Name    : fast.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Change lottery result per 3 ticks
#########################################################

loot replace entity @e[tag=lottery] armor.head kill @r
scoreboard players add @e[tag=lottery] lottery_count 1
execute at @e[tag=lottery] run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~ 0.75
execute as @e[tag=lottery,limit=1] if score @s lottery_count matches 30 run schedule function uhc:lobby/lottery/middle 5t
execute as @e[tag=lottery,limit=1] unless score @s lottery_count matches 30 run schedule function uhc:lobby/lottery/fast 2t
