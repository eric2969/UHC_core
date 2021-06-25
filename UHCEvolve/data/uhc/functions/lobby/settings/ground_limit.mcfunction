#########################################################
# UHC Project 
# Name    : ground_limit.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust under ground limit settings.
#########################################################

execute if entity @a[scores={book=76}] run scoreboard players add @e[tag=book] ground_limit 1
execute if entity @a[scores={book=77}] run scoreboard players remove @s ground_time 10
execute if entity @a[scores={book=78}] run scoreboard players add @s ground_time 10
execute if entity @a[scores={book=79}] run scoreboard players remove @s ground_height 5
execute if entity @a[scores={book=80}] run scoreboard players add @s ground_height 5

scoreboard players set @e[tag=book,scores={ground_limit=2..}] ground_limit 0
scoreboard players set @s[scores={ground_time=101..}] ground_time 0
scoreboard players set @s[scores={ground_time=..-1}] ground_time 100
scoreboard players set @s[scores={ground_height=91..}] ground_height 20
scoreboard players set @s[scores={ground_height=..19}] ground_height 90

execute if entity @a[scores={book=76}] if score @s ground_limit matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=76}] if score @s ground_limit matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=77..78}] if score @s ground_limit matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制遁地時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if entity @a[scores={book=79..80}] if score @s ground_limit matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_height"},"color":"yellow"},{"text":"格","color":"yellow"}]}