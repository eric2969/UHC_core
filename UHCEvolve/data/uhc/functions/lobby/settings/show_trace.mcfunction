#########################################################
# UHC Project 
# Name    : show_trace.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust show_trace(scoreboard).
#########################################################

execute if entity @a[scores={book=87}] run scoreboard players add @e[tag=book] show_trace 1

scoreboard players set @e[tag=book,scores={show_trace=2}] auto_crossbow 0

execute if score @s show_trace matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"顯示蹤跡","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s show_trace matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"顯示蹤跡","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
