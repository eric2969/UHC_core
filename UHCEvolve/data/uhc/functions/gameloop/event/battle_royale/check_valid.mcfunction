#########################################################
# UHC Project 
# Name    : check_valid.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Execute as tag=center
# func    : Check if new center is 20 blocks away from old center.
#########################################################

#get new center position
execute store result score @s posX run data get entity @s Pos[0] 10000  
execute store result score @s posZ run data get entity @s Pos[2] 10000 

#calculate diff
scoreboard players operation @s BR_xdiff = 00000000-0000-0000-0000-00000000000c posX
scoreboard players operation @s BR_xdiff -= @s posX
scoreboard players operation @s BR_zdiff = 00000000-0000-0000-0000-00000000000c posZ
scoreboard players operation @s BR_zdiff -= @s posZ

#move to new valid position
execute if entity @s[scores={BR_xdiff=-200000..-1}] at @s run tp @s ~20 ~ ~
execute if entity @s[scores={BR_xdiff=0..200000}] at @s run tp @s ~-20 ~ ~
execute if entity @s[scores={BR_zdiff=-200000..-1}] at @s run tp @s ~ ~ ~20
execute if entity @s[scores={BR_zdiff=0..200000}] at @s run tp @s ~ ~ ~-20
