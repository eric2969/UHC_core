#########################################################
# UHC Project 
# Name    : adv.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust advance_announce settings.
#########################################################

execute if entity @a[scores={book=42}] run scoreboard players add @e[tag=book] advance_announce 1

scoreboard players set @e[tag=book,scores={advance_announce=2..}] advance_announce 0

execute if score @s advance_announce matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"成就通知","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s advance_announce matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"成就通知","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}