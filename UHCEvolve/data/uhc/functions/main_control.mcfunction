###################################################
# UHC Project 
# Name    : main_control.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : Yes. Set by #load tag.
# func    : Main controller of the game. 
###################################################

#underclocking
scoreboard players add 00000000-0000-0000-0000-000000000001 underclock 1
execute as 00000000-0000-0000-0000-000000000001 run scoreboard players set @s[scores={underclock=4..}] underclock 0 

#state
#UNDEF: before start or after reset
#    1: lobby state
#    2: game state

execute as 00000000-0000-0000-0000-000000000001 if entity @s[scores={underclock=0,state=2}] run function uhc:gameloop/game4
execute as 00000000-0000-0000-0000-000000000001 if entity @s[scores={underclock=1,state=2}] run function uhc:gameloop/game1
execute as 00000000-0000-0000-0000-000000000001 if entity @s[scores={underclock=2,state=2}] run function uhc:gameloop/game2
execute as 00000000-0000-0000-0000-000000000001 if entity @s[scores={underclock=3,state=2}] run function uhc:gameloop/game3
execute as 00000000-0000-0000-0000-000000000001 if entity @s[scores={underclock=0,state=1}] run function uhc:lobby/lobby_system

#functions cannot be underclocked
execute if score 00000000-0000-0000-0000-000000000001 BR_move matches 1 as 00000000-0000-0000-0000-00000000000c at @s run function uhc:gameloop/event/battle_royale/center_move
#execute if score 00000000-0000-0000-0000-000000000001 nerf_arrow matches 1 if score 00000000-0000-0000-0000-000000000001 no_burn matches 1 as @e[type=#uhc:arrow] run data merge entity @s {Fire:-1000s,Color:-1}