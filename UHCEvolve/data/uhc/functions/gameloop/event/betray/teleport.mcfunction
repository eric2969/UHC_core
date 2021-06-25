#########################################################
# UHC Project 
# Name    : teleport.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute as and at tag=main
# func    : Announce and teleport betrayers.
#########################################################

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"集合","color":"red"}]}
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"背叛者名冊: "},{"selector":"@a[tag=betrayer]"}]}
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~

team join betrayer @a[tag=betrayer]

effect give @a[tag=betrayer] resistance 180 9 true
effect give @a[tag=betrayer] weakness 180 9 true

execute as @a[tag=betrayer,team=solo] run kill @e[tag=ref,tag=solo]
execute unless entity @a[team=red,gamemode=survival] run kill @e[tag=ref,tag=r]
execute unless entity @a[team=blue,gamemode=survival] run kill @e[tag=ref,tag=b]
execute unless entity @a[team=green,gamemode=survival] run kill @e[tag=ref,tag=gr]
execute unless entity @a[team=yellow,gamemode=survival] run kill @e[tag=ref,tag=y]
execute unless entity @a[team=purple,gamemode=survival] run kill @e[tag=ref,tag=pr]
execute unless entity @a[team=gray,gamemode=survival] run kill @e[tag=ref,tag=gy]
execute unless entity @a[team=red_dark,gamemode=survival] run kill @e[tag=ref,tag=rd]
execute unless entity @a[team=blue_dark,gamemode=survival] run kill @e[tag=ref,tag=bd]
execute unless entity @a[team=green_dark,gamemode=survival] run kill @e[tag=ref,tag=grd]
execute unless entity @a[team=gold,gamemode=survival] run kill @e[tag=ref,tag=yd]
execute unless entity @a[team=pink,gamemode=survival] run kill @e[tag=ref,tag=pk]
execute unless entity @a[team=gray_dark,gamemode=survival] run kill @e[tag=ref,tag=gyd]
execute unless entity @a[team=aqua,gamemode=survival] run kill @e[tag=ref,tag=aq]
execute unless entity @a[team=aqua_dark,gamemode=survival] run kill @e[tag=ref,tag=aqd]

execute if entity @a[tag=betrayer,gamemode=survival] run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,bty],Duration:2147483647,Particle:"block air"}

title @a[tag=betrayer,gamemode=survival] title {"text":"整裝時間: 3分鐘"}
title @a[tag=betrayer,gamemode=survival] subtitle {"text":""}

tp @a[tag=betrayer] @e[tag=set,limit=1]

scoreboard players set @s betray_tp 999

execute store result score 剩餘隊伍 information run execute if entity @e[tag=ref]

schedule function uhc:gameloop/event/notifier/betray3 2400t
schedule function uhc:gameloop/event/betray/spread 3600t


















