#########################################################
# UHC Project 
# Name    : nether.mcfunction 
# Made by : jelly99709
# Path    : /gameloop/event/notifier/
# Loop    : No
# func    : Nether close notifier.
#########################################################

execute as @a at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"地獄","color":"gold"},{"text":" | ","color":"white"},{"text":"五分鐘後關閉","color":"red"}]}
title @a[nbt={Dimension:-1}] title {"text":"地獄即將關閉"}

scoreboard players set @s nether_notifier 999