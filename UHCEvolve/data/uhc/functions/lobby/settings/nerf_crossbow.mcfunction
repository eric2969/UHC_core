#########################################################
# UHC Project 
# Name    : nerf_crossbow.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust nerf_crossbow(scoreboard).
#########################################################

execute if entity @a[scores={book=103}] run scoreboard players add @e[tag=book] nerf_crossbow 1

scoreboard players set @e[tag=book,scores={nerf_crossbow=2}] nerf_crossbow 0

execute if score @s nerf_crossbow matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"貫穿懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score @s nerf_crossbow matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"貫穿懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
