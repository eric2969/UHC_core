#########################################################
# UHC Project 
# Name    : spectator.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust spec_permission.
#########################################################

scoreboard players add @e[tag=book] spec_permission 1

scoreboard players set @e[tag=book,scores={spec_permission=2..}] spec_permission 0

execute if score @s spec_permission matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"觀察者模式","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s spec_permission matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"觀察者模式","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
