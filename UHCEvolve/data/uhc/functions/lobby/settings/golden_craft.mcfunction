#########################################################
# UHC Project 
# Name    : golden_craft.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust reverse_craft.
#########################################################

scoreboard players add @e[tag=book] reverse_craft 1

scoreboard players set @e[tag=book,scores={reverse_craft=2}] reverse_craft 0

execute if score @s reverse_craft matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"逆向合成","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s reverse_craft matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"逆向合成","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
