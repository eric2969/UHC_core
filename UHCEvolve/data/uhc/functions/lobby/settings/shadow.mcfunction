#########################################################
# UHC Project 
# Name    : shadow.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust shadow_invisible settings.
#########################################################

scoreboard players add @e[tag=book] shadow_invisible 1
scoreboard players set @e[tag=book,scores={shadow_invisible=2..}] shadow_invisible 0

execute if score @s shadow_invisible matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱身黑暗","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s shadow_invisible matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隱身黑暗","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}