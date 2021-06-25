#########################################################
# UHC Project 
# Name    : hide_name.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust hiding name settings.
#########################################################

execute if entity @a[scores={book=60}] run scoreboard players add @e[tag=book] hide_name 1
execute if entity @a[scores={book=61}] run scoreboard players remove @s hide_time 10
execute if entity @a[scores={book=62}] run scoreboard players add @s hide_time 10

scoreboard players set @e[tag=book,scores={hide_name=2..}] hide_name 0
scoreboard players set @s[scores={hide_time=121..}] hide_time 10
scoreboard players set @s[scores={hide_time=..9}] hide_time 120

execute if entity @a[scores={book=60}] if score @s hide_name matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱藏名條","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=60}] if score @s hide_name matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱藏名條","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=61..62}] if score @s hide_name matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱藏名條時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"hide_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}