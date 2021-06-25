#########################################################
# UHC Project 
# Name    : rand_silvefish.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : Yes, while function on. Execute at stone.
# func    : Random silverfish.
#########################################################

#summon area_effect_cloud ~ ~ ~ {Tags:[silver],Duration:5,Particle:"block air"}
#execute as @e[tag=silver,distance=..0.5,limit=1] store result score @s uuid run data get entity @s UUIDMost 0.00000000000000001

#execute if entity @e[tag=silver,scores={uuid=-46},distance=..0.5,limit=1,sort=nearest] anchored eyes run summon silverfish ^ ^.5 ^1
#execute if entity @e[tag=silver,scores={uuid=-46},distance=..0.5,limit=1,sort=nearest] anchored eyes run particle minecraft:poof ^ ^.5 ^1 .125 .25 .125 .05 3

#execute if entity @e[tag=apple,scores={uuid=0..},distance=..0.5] run summon item ^ ^1 ^2 {Item:{id:"minecraft:golden_apple",Count:1},PickupDelay:40}

#kill @e[tag=silver,distance=..0.5]
#scoreboard players remove @a[scores={silver=1..}] silver 1

summon silverfish ~ ~ ~
particle minecraft:poof ~ ~ ~ .125 .25 .125 .05 3
kill @s