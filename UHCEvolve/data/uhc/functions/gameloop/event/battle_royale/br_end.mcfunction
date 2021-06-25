#########################################################
# UHC Project 
# Name    : br_end.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Execute as tag=move
# func    : BR mode end.
#########################################################

#notifier
execute at @a run playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"隨機縮圈模式","color":"gold"},{"text":" | ","color":"white"},{"text":"收縮完成","color":"aqua"}]}

#scoreboard
scoreboard players set 00000000-0000-0000-0000-000000000001 border_on 2
scoreboard players reset 安全區半軸長 information

#remove armor stand
kill @e[tag=move]

#bossbar remove
bossbar set uhc:safe_x visible false
bossbar set uhc:safe_z visible false
bossbar set uhc:danger_x visible false
bossbar set uhc:danger_z visible false