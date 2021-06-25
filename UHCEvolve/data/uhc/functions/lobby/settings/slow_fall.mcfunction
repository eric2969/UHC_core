#########################################################
# UHC Project 
# Name    : slow_fall.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust start slow fall settings.
#########################################################

scoreboard players add @e[tag=book] slow_fall 1
scoreboard players set @e[tag=book,scores={slow_fall=2..}] slow_fall 0

execute if score @s slow_fall matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"開場緩降","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if score @s slow_fall matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"開場緩降","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
