#########################################################
# UHC Project 
# Name    : betray1.mcfunction 
# Made by : jelly99709
# Path    : /gameloop/event/notifier/
# Loop    : No
# func    : Betrayer selected notifier.
#########################################################

execute as @a at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"背叛者","color":"gold"},{"text":" | ","color":"white"},{"text":"三分鐘後產生","color":"red"}]}

title @a title {"text":"即將產生背叛者","color":"gold"}
title @a subtitle {"text":"隱藏身份 掠奪資源 協助隊友","italic":true}

scoreboard players operation @s betray_notifier = @s betray_tp
scoreboard players operation @s betray_notifier -= const3 III