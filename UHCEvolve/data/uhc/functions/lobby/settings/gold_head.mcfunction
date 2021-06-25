#########################################################
# UHC Project 
# Name    : gold_head.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust gold_head.
#########################################################

execute if entity @a[scores={book=23}] run scoreboard players add @e[tag=book] gold_head 1
execute if entity @a[scores={book=24..25}] run scoreboard players add @e[tag=gh] gh_mode 1

scoreboard players set @e[tag=book,scores={gold_head=2..}] gold_head 0
scoreboard players set @e[tag=gh,scores={gh_mode=2..}] gh_mode 0

execute if entity @a[scores={book=23}] if score @s gold_head matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=23}] if score @s gold_head matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=24..25}] if score @s gold_head matches 1 if score 00000000-0000-0000-0000-000000000010 gh_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"標準","color":"light_purple"}]}
execute if entity @a[scores={book=24..25}] if score @s gold_head matches 1 if score 00000000-0000-0000-0000-000000000011 gh_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"快速","color":"light_purple"}]}