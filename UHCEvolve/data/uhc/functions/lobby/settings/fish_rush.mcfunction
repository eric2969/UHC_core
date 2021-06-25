#########################################################
# UHC Project 
# Name    : fish_rush.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust fish rush settings.
#########################################################

scoreboard players add @e[tag=book] fish_rush 1
scoreboard players set @e[tag=book,scores={fish_rush=2..}] fish_rush 0

execute if score @s fish_rush matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"釣魚狂熱","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s fish_rush matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"釣魚狂熱","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}