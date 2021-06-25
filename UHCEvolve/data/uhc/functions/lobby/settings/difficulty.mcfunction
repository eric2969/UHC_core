#########################################################
# UHC Project 
# Name    : difficulty.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust difficulty.
#########################################################

execute if entity @a[scores={book=16}] run scoreboard players remove @s diff 1
execute if entity @a[scores={book=17}] run scoreboard players add @s diff 1

scoreboard players set @s[scores={diff=4..}] diff 0
scoreboard players set @s[scores={diff=..-1}] diff 3

execute if score @s diff matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"和平","color":"light_purple"}]}
execute if score @s diff matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"簡單","color":"light_purple"}]}
execute if score @s diff matches 2 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"普通","color":"light_purple"}]}
execute if score @s diff matches 3 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"困難","color":"light_purple"}]}