#########################################################
# UHC Project 
# Name    : slow.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Change lottery result per 15 ticks
#########################################################

loot replace entity @e[tag=lottery] armor.head kill @r
scoreboard players add @e[tag=lottery] lottery_count 1
execute at @e[tag=lottery] run playsound minecraft:block.note_block.harp ambient @a ~ ~ ~ 0.75
execute as @e[tag=lottery,limit=1] unless score @s lottery_count matches 39 run schedule function uhc:lobby/lottery/slow 15t
execute if score @e[tag=lottery,limit=1] lottery_count matches 39 run function uhc:lobby/lottery/end
