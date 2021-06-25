#########################################################
# UHC Project 
# Name    : random_chest.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust random_chest(scoreboard).
#########################################################

execute if entity @a[scores={book=92}] run scoreboard players add @e[tag=book] random_chest 1
execute if entity @a[scores={book=93}] run scoreboard players remove @s chest_num 5
execute if entity @a[scores={book=94}] run scoreboard players add @s chest_num 5

scoreboard players set @e[tag=book,scores={random_chest=2}] random_chest 0
scoreboard players set @s[scores={chest_num=..4}] chest_num 25
scoreboard players set @s[scores={chest_num=26..}] chest_num 5

execute if entity @a[scores={book=92}] if score @s random_chest matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機物資箱","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=92}] if score @s random_chest matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機物資箱","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=93..94}] if score @s random_chest matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機物資箱","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"chest_num"},"color":"yellow"},{"text":"個","color":"yellow"}]}