#########################################################
# UHC Project 
# Name    : show_name.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : No.
# func    : Show name.
#########################################################

scoreboard players add @s hide_name 1
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch ambient @s ~ ~ ~
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"名條","color":"gold"},{"text":" | ","color":"white"},{"text":"顯示","color":"red"}]}

function uhc:apply/name_visible_true