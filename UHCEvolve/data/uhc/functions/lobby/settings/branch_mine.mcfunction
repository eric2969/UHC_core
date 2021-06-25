#########################################################
# UHC Project 
# Name    : branch_mine.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust branch_mine.
#########################################################

execute if entity @a[scores={book=113}] run scoreboard players add @e[tag=book] branch_mine 1
execute if entity @a[scores={book=114}] run scoreboard players remove @s branch_limit 100
execute if entity @a[scores={book=115}] run scoreboard players add @s branch_limit 100
execute if entity @a[scores={book=116}] run scoreboard players add @e[tag=book] branch_position 1
execute if entity @a[scores={book=117}] run scoreboard players add @e[tag=book] branch_bomb 1
execute if entity @a[scores={book=118}] run scoreboard players remove @s branch_bomb_num 1
execute if entity @a[scores={book=119}] run scoreboard players add @s branch_bomb_num 1

scoreboard players set @e[tag=book,scores={branch_mine=2..}] branch_mine 0
scoreboard players set @s[scores={branch_limit=..99}] branch_limit 1200
scoreboard players set @s[scores={branch_limit=1201..}] branch_limit 100
scoreboard players set @e[tag=book,scores={branch_position=2..}] branch_position 0
scoreboard players set @e[tag=book,scores={branch_bomb=2..}] branch_bomb 0
scoreboard players set @s[scores={branch_bomb_num=..0}] branch_bomb_num 5
scoreboard players set @s[scores={branch_bomb_num=6..}] branch_bomb_num 1

execute if entity @a[scores={book=113}] if score @s branch_mine matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=113}] if score @s branch_mine matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=114..115}] if score @s branch_mine matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨容許挖掘","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"branch_limit"},"color":"yellow"},{"text":"石頭","color":"yellow"}]}
execute if entity @a[scores={book=116}] if score @s branch_mine matches 1 if score @s branch_position matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨顯示座標","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=116}] if score @s branch_mine matches 1 if score @s branch_position matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨顯示座標","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=117}] if score @s branch_mine matches 1 if score @s branch_bomb matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨隨機爆炸","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=117}] if score @s branch_mine matches 1 if score @s branch_bomb matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨隨機爆炸","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=118..119}] if score @s branch_mine matches 1 if score @s branch_bomb matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚骨隨機爆炸前容許次數","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"branch_bomb_num"},"color":"yellow"},{"text":"次","color":"yellow"}]}
