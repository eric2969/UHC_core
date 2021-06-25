#########################################################
# UHC Project 
# Name    : sky_penalty.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/
# Loop    : Yes, while function on.
# func    : Height penalty.
#########################################################

scoreboard players operation @a[gamemode=survival] sky_height = @s sky_height
execute as @a[gamemode=survival] run scoreboard players operation @s sky_height -= @s posY
tag @a[tag=!sky,gamemode=survival,scores={sky_height=..-1}] add sky
tag @a[tag=sky,scores={sky_height=0..}] remove sky
#execute as @a if score @s posY > 00000000-0000-0000-0000-000000000001 sky_height run tag @s[tag=!sky] add sky
#execute as @a if score @s posY <= 00000000-0000-0000-0000-000000000001 sky_height run tag @s[tag=sky] remove sky

#tag @a[gamemode=spectator,tag=sky] remove sky 

#title @a[tag=sky,nbt=!{ActiveEffects:[{Id:20b}]}] title {"text":"","extra":[{"text":"限制制空","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"dark_red","italic":true},{"text":"層","color":"white"}]}
#effect give @a[tag=sky,nbt=!{ActiveEffects:[{Id:20b}]}] wither 999999 0 true
title @a[tag=sky,predicate=!uhc:wither_effect] title {"text":"","extra":[{"text":"限制制空","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"dark_red","italic":true},{"text":"層","color":"white"}]}
effect give @a[tag=sky,predicate=!uhc:wither_effect] wither 999999 0 true
effect clear @a[tag=!sky,tag=!gnd,tag=!nether] wither