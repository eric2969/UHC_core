#########################################################
# UHC Project 
# Name    : pearl_tear.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust pearl tear settings.
#########################################################

scoreboard players add @e[tag=book] pearl_tear 1
scoreboard players set @e[tag=book,scores={pearl_tear=2..}] pearl_tear 0

execute if score @s pearl_tear matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"碧藍之淚","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s pearl_tear matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"碧藍之淚","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}