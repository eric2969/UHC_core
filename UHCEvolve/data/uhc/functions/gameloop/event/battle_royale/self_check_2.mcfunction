#########################################################
# UHC Project 
# Name    : self_check_2.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : Yes, if function on.
# func    : Calculate distance to center. Part 2.
#########################################################

#substract by safe region size
scoreboard players operation @a BR_xdiff -= 安全區半軸長 information
scoreboard players operation @a BR_zdiff -= 安全區半軸長 information

#tag
#execute if score @s BR_xdiff > 00000000-0000-0000-0000-000000000001 BR_size run tag @s add danger
#execute if score @s BR_zdiff > 00000000-0000-0000-0000-000000000001 BR_size run tag @s add danger
#execute if score @s BR_xdiff <= 00000000-0000-0000-0000-000000000001 BR_size if score @s BR_zdiff <= 00000000-0000-0000-0000-000000000001 BR_size run tag @s remove danger
tag @a[scores={BR_xdiff=0..}] add danger_x
tag @a[scores={BR_zdiff=0..}] add danger_z
tag @a[scores={BR_xdiff=..-1}] remove danger_x
tag @a[scores={BR_zdiff=..-1}] remove danger_z

#get self coordinate
execute as @a store result score @s BR_xdiff run data get entity @s Pos[0]
execute as @a store result score @s BR_zdiff run data get entity @s Pos[2]
#scoreboard players operation @s BR_xdiff = @s posX
#scoreboard players operation @s BR_zdiff = @s posZ