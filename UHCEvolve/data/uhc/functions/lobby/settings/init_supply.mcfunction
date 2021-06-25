#########################################################
# UHC Project 
# Name    : init_supply.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Set init_supply.
#########################################################


scoreboard players add @e[tag=book] init_supply 1

scoreboard players set @e[tag=book,scores={init_supply=2}] init_supply 0

execute if score @s init_supply matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"初始物資","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s init_supply matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"初始物資","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}

execute if entity @a[tag=set_supply] if score @s init_supply matches 0 run scoreboard players set @a[scores={book=1031},limit=1] book 1034