###################################################
# UHC Project 
# Name    : join_game.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : No. Execute as players.
# func    : Players that join during the game.
###################################################

gamemode spectator @s
team join spec @s[team=!]
#effect give @s night_vision 999999 0 true
tellraw @s {"text":"UHCE >>> ","color":"gray","extra":[{"text":"遊戲已經開始，","color":"white"},{"text":"以觀眾身份進行遊戲","color":"dark_aqua"}]}
tag @s add game_start
execute if entity @e[tag=silverfish] run tag @s add silverfish
execute if entity @e[tag=lucky_leaves] run tag @s add lucky_leaves
execute if entity @e[tag=gold_head_normal] run tag @s add gold_head_normal
execute if entity @e[tag=gold_head_fast] run tag @s add gold_head_fast 