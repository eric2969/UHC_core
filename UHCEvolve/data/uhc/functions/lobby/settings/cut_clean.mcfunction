#########################################################
# UHC Project 
# Name    : cut_clean.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust cut_clean settings.
#########################################################

scoreboard players add @e[tag=book] cut_clean 1

scoreboard players set @e[tag=book,scores={cut_clean=2..}] cut_clean 0

execute if score @s cut_clean matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"物品免燒","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s cut_clean matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"物品免燒","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}