#########################################################
# UHC Project 
# Name    : teleport_1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/room_tp/
# Loop    : No.
# func    : Teleport players for room mode.
#########################################################

#scoreboard settings
scoreboard players add @s room 1
scoreboard players set @s sky_limit 0
scoreboard players set @s ground_limit 0
scoreboard players set @s nether_open 2
scoreboard players set @s night_vision 1
tag @a remove sky
tag @a remove gnd
tag @a remove nether
#tag @a remove roof

#effects
effect clear @a wither 
effect give @a resistance 1 9 true

#border
execute at @e[tag=solo_tp] run setworldspawn ~ ~ ~
execute at @e[tag=solo_tp] run worldborder center ~ ~
worldborder set 18

#teleport
execute as @e[tag=solo_tp] at @s run function uhc:gameloop/event/room_tp/teleport_2

#end tp
kill @e[tag=tp]