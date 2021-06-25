#########################################################
# UHC Project 
# Name    : betray2.mcfunction 
# Made by : jelly99709
# Path    : /gameloop/event/notifier/
# Loop    : No
# func    : Betrayer teleport notifier.
#########################################################

execute as @a[tag=betrayer] at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0
tellraw @a[tag=betrayer] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"背叛者","color":"gold"},{"text":" | ","color":"white"},{"text":"三分鐘後傳送集合","color":"red"}]}

scoreboard players set @s betray_notifier 999