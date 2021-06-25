#########################################################
# UHC Project 
# Name    : room.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust final room settings.
#########################################################

execute if entity @e[scores={book=81}] run function uhc:lobby/settings/room_ask
execute if entity @e[scores={book=82}] run scoreboard players remove @s room_time 5
execute if entity @e[scores={book=83}] run scoreboard players add @s room_time 5

scoreboard players set @s[scores={room_time=121..}] room_time 40
scoreboard players set @s[scores={room_time=..39}] room_time 120

#execute if entity @a[scores={book=60}] if score @s hide_name matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱藏名條","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
#execute if entity @a[scores={book=60}] if score @s hide_name matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱藏名條","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=82..83}] if score @s room matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"決戰房間傳送時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"room_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}