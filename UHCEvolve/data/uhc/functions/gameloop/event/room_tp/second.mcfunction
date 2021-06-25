#########################################################
# UHC Project 
# Name    : second.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/room_tp/
# Loop    : Yes.
# func    : Show notifier and adjust timer_sec each second.
#########################################################

scoreboard players remove @s timer_sec 1
execute if entity @s[scores={timer_sec=1..30}] run title @a title {"text":"傳送倒數","color":"yellow","extra":[{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_sec"},"color":"red","bold":true,"italic":true},{"text":"秒"}]}
execute if entity @s[scores={timer_sec=30}] as @a at @s run playsound minecraft:block.anvil.land ambient @s ~ ~ ~
execute if entity @s[scores={timer_sec=11..20}] as @a at @s run playsound minecraft:block.note_block.hat ambient @s ~ ~ ~
execute if entity @s[scores={timer_sec=1..10}] as @a at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~
execute if entity @s[scores={timer_sec=0}] run title @a clear

execute if entity @s[scores={timer_sec=0..1}] run kill @e[type=ender_pearl]

summon area_effect_cloud ~ ~ ~ {Tags:[sec],Age:-21,Particle:"block air"}

