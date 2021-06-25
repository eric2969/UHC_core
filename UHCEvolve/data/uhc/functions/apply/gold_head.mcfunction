#########################################################
# UHC Project 
# Name    : gold_head.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : No. Execute as players.
# func    : Golden head effect.
#########################################################

playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1
effect give @s regeneration 10 1 false
effect give @s absorption 120 0 false

scoreboard players remove @s gold_head 1
scoreboard players operation @s temp_apple += const1 I
scoreboard players operation @s temp_apple += const1 I