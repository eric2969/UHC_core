#########################################################
# UHC Project 
# Name    : sky.mcfunction 
# Made by : jelly99709
# Path    : /gameloop/event/notifier/
# Loop    : No
# func    : Sky limitation notifier.
#########################################################

execute as @a at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"red"},{"text":"層","color":"red"},{"text":" | ","color":"white"},{"text":"五分鐘後啟動","color":"red"}]}
#title @a title {"text":"","extra":[{"text":"限制制空","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"dark_red","italic":true},{"text":"層","color":"white"}]}

scoreboard players set @s sky_notifier 999