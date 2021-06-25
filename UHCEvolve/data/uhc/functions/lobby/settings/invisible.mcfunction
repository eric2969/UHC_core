#########################################################
# UHC Project 
# Name    : invisible.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust invisible setting.
#########################################################

scoreboard players add @e[tag=book] invisible 1

scoreboard players set @e[tag=book,scores={invisible=2}] invisible 0

execute if score @s invisible matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱形保護","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s invisible matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱形保護","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
