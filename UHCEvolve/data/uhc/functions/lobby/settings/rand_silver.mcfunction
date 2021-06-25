#########################################################
# UHC Project 
# Name    : rand_silver.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust rand_silvefish.
#########################################################

scoreboard players add @e[tag=book] rand_silverfish 1

scoreboard players set @e[tag=book,scores={rand_silverfish=2}] rand_silverfish 0

execute if score @s rand_silverfish matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機蠹魚","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s rand_silverfish matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機蠹魚","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
