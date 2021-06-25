#########################################################
# UHC Project 
# Name    : allow_diamond.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust start diamond crafting settings.
#########################################################

scoreboard players add @e[tag=book] allow_diamond 1
scoreboard players set @e[tag=book,scores={allow_diamond=2..}] allow_diamond 0

execute if score @s allow_diamond matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"鑽裝合成","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s allow_diamond matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"鑽裝合成","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}