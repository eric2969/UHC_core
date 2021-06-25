#########################################################
# UHC Project 
# Name    : team_permission.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust team_permission.
#########################################################

scoreboard players add @e[tag=book] team_permission 1

scoreboard players set @e[tag=book,scores={team_permission=2}] team_permission 0

execute if score @s team_permission matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"自由選隊","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s team_permission matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"自由選隊","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
