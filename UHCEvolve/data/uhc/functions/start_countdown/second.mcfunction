#########################################################
# UHC Project 
# Name    : second.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : Yes
# func    : Show notifier and adjust timer_sec each second.
#########################################################

scoreboard players remove @s timer_sec 1
execute if score @s timer_sec matches 1..10 run title @a title {"text":"遊戲開始 倒數","color":"yellow","extra":[{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"timer_sec"},"color":"red","bold":true,"italic":true},{"text":"秒"}]}
execute if score @s timer_sec matches 0 run title @a title {"text":">>> ","color":"dark_gray","extra":[{"text":"戰鬥開始","color":"red"},{"text":" <<<","color":"dark_gray"}]}
#execute if score @s timer_sec matches 10 at @a run difficulty peaceful
execute if score @s timer_sec matches 10 as @e[type=#uhc:hostile_normal] at @s run tp @s ~ -999 ~
execute if score @s timer_sec matches 10 as @a at @s run playsound minecraft:block.tripwire.attach block @s ~ ~ ~
execute if score @s timer_sec matches 1..5 as @a at @s run playsound minecraft:block.note_block.hat block @s ~ ~ ~

#execute if score @s slow_fall matches 0 if score @s timer_sec matches 1 as @a at @s run playsound minecraft:entity.firework_rocket.launch block @s ~ ~ ~ 1 0.2

summon area_effect_cloud ~ ~ ~ {Tags:[sec],Age:-21,Particle:"block air"}