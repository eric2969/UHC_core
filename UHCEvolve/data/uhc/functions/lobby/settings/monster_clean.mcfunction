#########################################################
# UHC Project 
# Name    : time_stop.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust monster clean settings.
#########################################################

execute if entity @a[scores={book=57}] run scoreboard players add @e[tag=book] monster_clean 1
execute if entity @a[scores={book=58}] run scoreboard players remove @s monster_time 10
execute if entity @a[scores={book=59}] run scoreboard players add @s monster_time 10

scoreboard players set @e[tag=book,scores={monster_clean=2..}] monster_clean 0
scoreboard players set @s[scores={monster_time=101..}] monster_time 20
scoreboard players set @s[scores={monster_time=..19}] monster_time 100

execute if entity @a[scores={book=57}] if score @s monster_clean matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"清除怪物","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=57}] if score @s monster_clean matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"清除怪物","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=58..59}] if score @s monster_clean matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"清除怪物時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"monster_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}