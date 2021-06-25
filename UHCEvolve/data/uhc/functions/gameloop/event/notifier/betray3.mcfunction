#########################################################
# UHC Project 
# Name    : betray3.mcfunction 
# Made by : jelly99709
# Path    : /gameloop/event/notifier/
# Loop    : No
# func    : Betrayer sperad notifier.
#########################################################

execute as @a[tag=betrayer] at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0
tellraw @a[tag=betrayer] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"背叛者","color":"gold"},{"text":" | ","color":"white"},{"text":"一分鐘後隨機傳送","color":"red"}]}
title @a[tag=betrayer] title {"text":"一分鐘後隨機傳送"}