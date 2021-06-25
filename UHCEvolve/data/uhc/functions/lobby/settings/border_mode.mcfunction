#########################################################
# UHC Project 
# Name    : border_mode.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust border_mode settings.
#########################################################

execute if entity @a[scores={book=43}] run scoreboard players add @e[tag=book] border_on 1
execute if entity @a[scores={book=44}] run scoreboard players remove @e[tag=mode] border_mode 1
execute if entity @a[scores={book=45}] run scoreboard players add @e[tag=mode] border_mode 1
execute if entity @a[scores={book=46}] run scoreboard players remove @s border_start 10
execute if entity @a[scores={book=47}] run scoreboard players add @s border_start 10
execute if entity @a[scores={book=48}] run scoreboard players remove @s border_end 32
execute if entity @a[scores={book=49}] run scoreboard players add @s border_end 32
execute if entity @a[scores={book=50}] run scoreboard players remove @s border_move 10
execute if entity @a[scores={book=51}] run scoreboard players add @s border_move 10

scoreboard players set @e[tag=book,scores={border_on=2..}] border_on 0
scoreboard players set @e[tag=mode,scores={border_mode=3..}] border_mode 0
scoreboard players set @e[tag=mode,scores={border_mode=..-1}] border_mode 2
scoreboard players set @s[scores={border_start=101..}] border_start 0
scoreboard players set @s[scores={border_start=..-1}] border_start 100
scoreboard players set @s[scores={border_end=113..}] border_end 16
scoreboard players set @s[scores={border_end=..15}] border_end 112
scoreboard players set @s[scores={border_move=61..}] border_move 20
scoreboard players set @s[scores={border_move=..19}] border_move 60

execute if entity @a[scores={book=43}] if score @s border_on matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"特殊邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=43}] if score @s border_on matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"特殊邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=44..45}] if score @s border_on matches 1 if score 00000000-0000-0000-0000-000000000003 border_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"特殊邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"漸縮","color":"light_purple"}]}
execute if entity @a[scores={book=44..45}] if score @s border_on matches 1 if score 00000000-0000-0000-0000-000000000004 border_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"特殊邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"競技場","color":"light_purple"}]}
execute if entity @a[scores={book=44..45}] if score @s border_on matches 1 if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"特殊邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"隨機縮圈","color":"light_purple"}]}
execute if entity @a[scores={book=46..47}] if score @s border_on matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"邊界啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_start"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if entity @a[scores={book=48..49}] if score @s border_on matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"邊界最終大小","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_end"},"color":"yellow"},{"text":"格","color":"yellow"}]}
execute if entity @a[scores={book=50..51}] if score @s border_on matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"邊界收縮時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_move"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}