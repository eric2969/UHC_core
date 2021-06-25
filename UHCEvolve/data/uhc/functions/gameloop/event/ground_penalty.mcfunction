#########################################################
# UHC Project 
# Name    : ground_limit.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : Yes, while function on.
# func    : Height penalty.
#########################################################

scoreboard players operation @a[gamemode=survival] ground_height = @s ground_height
execute as @a[gamemode=survival] run scoreboard players operation @s ground_height -= @s posY
tag @a[tag=!gnd,gamemode=survival,scores={ground_height=0..}] add gnd
tag @a[tag=gnd,scores={ground_height=..-1}] remove gnd

#tag @a[gamemode=spectator,tag=gnd] remove gnd 

title @a[tag=gnd,predicate=!uhc:wither_effect] title {"text":"","extra":[{"text":"限制遁地","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_height"},"color":"dark_red","italic":true},{"text":"層","color":"white"}]}
effect give @a[tag=gnd,predicate=!uhc:wither_effect] wither 999999 0 true
effect clear @a[tag=!sky,tag=!gnd,tag=!nether] wither