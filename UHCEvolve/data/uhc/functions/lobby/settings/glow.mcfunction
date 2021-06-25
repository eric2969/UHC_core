#########################################################
# UHC Project 
# Name    : glow.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust glowing time settings.
#########################################################

execute if entity @a[scores={book=63}] run scoreboard players add @e[tag=book] glowing 1
execute if entity @a[scores={book=64}] run scoreboard players remove @s glow_time 10
execute if entity @a[scores={book=65}] run scoreboard players add @s glow_time 10

scoreboard players set @e[tag=book,scores={glowing=2..}] glowing 0
scoreboard players set @s[scores={glow_time=121..}] glow_time 20
scoreboard players set @s[scores={glow_time=..19}] glow_time 120

execute if entity @a[scores={book=63}] if score @s glowing matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"玩家發光","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=63}] if score @s glowing matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"玩家發光","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=64..65}] if score @s glowing matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"發光時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"glow_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}