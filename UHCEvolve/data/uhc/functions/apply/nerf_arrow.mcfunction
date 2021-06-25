#########################################################
# UHC Project 
# Name    : nerf_arrow.mcfunction 
# Made by : jelly99709
# Path    : /apply/
# Loop    : No. 
# func    : Double arrow speed and half arrow damage
#########################################################

execute store result entity @s Motion[0] double 0.0002 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.0002 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.0002 run data get entity @s Motion[2] 10000
execute store result entity @s damage double 0.025 run data get entity @s damage 10
data merge entity @s {Crit:0b,Color:-1}
tag @s add arrow