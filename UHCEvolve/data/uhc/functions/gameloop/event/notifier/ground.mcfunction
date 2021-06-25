#########################################################
# UHC Project 
# Name    : ground.mcfunction 
# Made by : jelly99709
# Path    : /gameloop/event/notifier/
# Loop    : No
# func    : Underground limitation notifier.
#########################################################

execute as @s at @s run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 0
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_min"},"color":"red"},{"text":"分鐘","color":"red"},{"text":" | ","color":"white"},{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_height"},"color":"red"},{"text":"層","color":"red"},{"text":" | ","color":"white"},{"text":"五分鐘後啟動","color":"red"}]}
execute as @a[gamemode=!spectator] if score @s posY < 00000000-0000-0000-0000-000000000001 ground_height run title @s title {"text":"","extra":[{"text":"限制遁地","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_height"},"color":"dark_red","italic":true},{"text":"層","color":"white"}]}

scoreboard players set @s gnd_notifier 999