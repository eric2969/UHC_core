#########################################################
# UHC Project 
# Name    : room_check.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Generate room.
#########################################################

execute if entity @s[scores={room=-1}] run execute at @e[tag=assist] run setblock ~ 126 ~ redstone_block replace

execute if entity @s[scores={room=-1}] run scoreboard players set @e[tag=assist] room 0
execute if entity @s[scores={room=-1}] run scoreboard players set @s room 1

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"決戰房間","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}