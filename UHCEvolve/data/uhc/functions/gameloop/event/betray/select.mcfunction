#########################################################
# UHC Project 
# Name    : select.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute as and at tag=main
# func    : Select betrayers.
#########################################################

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"啟動","color":"red"}]}
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~

execute if score @s betray_num > 剩餘隊伍 information run function uhc:gameloop/event/betray/pre_select1
execute if score @s betray_num <= 剩餘隊伍 information run function uhc:gameloop/event/betray/pre_select2

execute if score @s betray_num matches 1 run tag @r[tag=candidate,limit=1] add betrayer
execute if score @s betray_num matches 2 run tag @r[tag=candidate,limit=2] add betrayer
execute if score @s betray_num matches 3 run tag @r[tag=candidate,limit=3] add betrayer
execute if score @s betray_num matches 4 run tag @r[tag=candidate,limit=4] add betrayer

title @a[tag=betrayer] title {"text":"你成為了背叛者","color":"red"}
title @a[tag=betrayer] subtitle {"text":"","extra":[{"text":"你的隊友:"},{"selector":"@a[tag=betrayer]","italic":true}]}
tellraw @a[tag=betrayer] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"你的隊友:"},{"selector":"@a[tag=betrayer]"}]}

give @a[tag=betrayer] bucket 1
give @a[tag=betrayer] flint_and_steel 1
execute as @a[tag=betrayer] run function uhc:gameloop/event/betray/position

#pearl tear
execute if score @s pearl_tear matches 1 unless entity @a[tag=betrayer,scores={pearl_own=1..}] run function uhc:apply/pearl_tear/betrayer

scoreboard players set @s betray_time 999