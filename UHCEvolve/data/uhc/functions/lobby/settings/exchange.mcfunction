#########################################################
# UHC Project 
# Name    : exchange.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust exchange settings.
#########################################################

scoreboard players add @e[tag=book] exchange 1

scoreboard players set @e[tag=book,scores={exchange=2..}] exchange 0

execute if score @s exchange matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"礦物交換","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s exchange matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"礦物交換","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}