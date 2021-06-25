#########################################################
# UHC Project 
# Name    : sky_limit.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust sky limit settings.
#########################################################

execute if entity @a[scores={book=71}] run scoreboard players add @e[tag=book] sky_limit 1
execute if entity @a[scores={book=72}] run scoreboard players remove @s sky_time 10
execute if entity @a[scores={book=73}] run scoreboard players add @s sky_time 10
execute if entity @a[scores={book=74}] run scoreboard players remove @s sky_height 5
execute if entity @a[scores={book=75}] run scoreboard players add @s sky_height 5

scoreboard players set @e[tag=book,scores={sky_limit=2..}] sky_limit 0
scoreboard players set @s[scores={sky_time=101..}] sky_time 0
scoreboard players set @s[scores={sky_time=..-1}] sky_time 100
scoreboard players set @s[scores={sky_height=131..}] sky_height 60
scoreboard players set @s[scores={sky_height=..59}] sky_height 130

execute if entity @a[scores={book=71}] if score @s sky_limit matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=71}] if score @s sky_limit matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=72..73}] if score @s sky_limit matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制制空時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if entity @a[scores={book=74..75}] if score @s sky_limit matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"yellow"},{"text":"格","color":"yellow"}]}