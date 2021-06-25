#########################################################
# UHC Project 
# Name    : saddle_craft.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust saddle(scoreboard).
#########################################################

scoreboard players add @e[tag=book] saddle 1

scoreboard players set @e[tag=book,scores={saddle=2}] saddle 0

execute if score @s saddle matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"人造馬鞍","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s saddle matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"人造馬鞍","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
