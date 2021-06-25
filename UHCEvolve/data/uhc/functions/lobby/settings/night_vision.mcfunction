#########################################################
# UHC Project 
# Name    : night_vision.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust night_vision.
#########################################################

scoreboard players add @e[tag=book] night_vision 1

scoreboard players set @e[tag=book,scores={night_vision=2}] night_vision 0

execute if score @s night_vision matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"夜視效果","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s night_vision matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"夜視效果","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
