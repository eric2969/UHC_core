#########################################################
# UHC Project 
# Name    : fish_craft.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust fish_bucket(scoreboard).
#########################################################

scoreboard players add @e[tag=book] fish_bucket 1

scoreboard players set @e[tag=book,scores={fish_bucket=2}] fish_bucket 0

execute if score @s fish_bucket matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚桶合成","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s fish_bucket matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"魚桶合成","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
