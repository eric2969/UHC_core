#########################################################
# UHC Project 
# Name    : rand_apple.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust rand_apple.
#########################################################

scoreboard players add @e[tag=book] rand_apple 1

scoreboard players set @e[tag=book,scores={rand_apple=2}] rand_apple 0

execute if score @s rand_apple matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機金蘋果","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s rand_apple matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機金蘋果","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
