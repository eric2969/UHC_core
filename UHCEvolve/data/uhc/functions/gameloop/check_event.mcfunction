#########################################################
# UHC Project 
# Name    : check_event.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as and at tag=main
# func    : Check event and adjust timer_min each minute.
#########################################################

#timer
scoreboard players add @s timer_min 1
summon area_effect_cloud ~ ~ ~ {Tags:[min],Age:-1200,Particle:"block air"}

#first day invisibility protection cancel
execute if score @s[scores={invisible=1}] timer_min matches 10.. run function uhc:gameloop/event/invisible_close

#nether_open
execute if score @s[scores={nether_open=1}] timer_min >= @s nether_notifier run function uhc:gameloop/event/notifier/nether
execute if score @s[scores={nether_open=1}] timer_min >= @s nether_time run function uhc:gameloop/event/nether_close

#betrayer
execute if score @s[scores={betray=1}] timer_min >= @s betray_notifier unless score @s betray_time matches 999 run function uhc:gameloop/event/notifier/betray1
execute if score @s[scores={betray=1}] timer_min >= @s betray_time run function uhc:gameloop/event/betray/select
execute if score @s[scores={betray=1}] timer_min >= @s betray_notifier if score @s betray_time matches 999 run function uhc:gameloop/event/notifier/betray2
execute if score @s[scores={betray=1}] timer_min >= @s betray_tp run function uhc:gameloop/event/betray/teleport

#border mode --- shrink
execute if score @s[scores={border_on=1}] timer_min >= @s border_start if entity @e[tag=m1,scores={border_mode=1}] run function uhc:gameloop/event/shrink_start

#border mode --- shrink end
execute if score @s[scores={border_on=2}] timer_min >= @s border_move if entity @e[tag=m1,scores={border_mode=1}] run function uhc:gameloop/event/shrink_end

#border mode --- arena
execute if score @s[scores={border_on=1}] timer_min >= @s border_start if entity @e[tag=m2,scores={border_mode=1}] run function uhc:gameloop/event/arena 

#border mode --- battle royale
execute if score @s[scores={border_on=1}] timer_min >= @s border_start if entity @e[tag=m3,scores={border_mode=1}] run function uhc:gameloop/event/battle_royale/br_controller

#time stop
execute if score @s[scores={day_stop=1}] timer_min >= @s day_time run function uhc:gameloop/event/day

#clean monster
execute if score @s[scores={monster_clean=1}] timer_min >= @s monster_time run function uhc:gameloop/event/monster/monster_1

#show name
execute if score @s[scores={hide_name=1}] timer_min >= @s hide_time run function uhc:gameloop/event/show_name

#glow
execute if score @s[scores={glowing=1}] timer_min >= @s glow_time run function uhc:gameloop/event/glow

#weather fix
execute if score @s[scores={weather_fix=1}] timer_min >= @s weather_time run function uhc:gameloop/event/weather

#sky limit
execute if score @s[scores={sky_limit=1}] timer_min >= @s sky_notifier run function uhc:gameloop/event/notifier/sky
execute if score @s[scores={sky_limit=1}] timer_min >= @s sky_time run function uhc:gameloop/event/sky

#ground limit
execute if score @s[scores={ground_limit=1}] timer_min >= @s gnd_notifier run function uhc:gameloop/event/notifier/ground
execute if score @s[scores={ground_limit=1}] timer_min >= @s ground_time run function uhc:gameloop/event/ground

#room
execute if score @s[scores={room=1}] timer_min >= @s room_time run function uhc:gameloop/event/room_setup

#show_trace
#execute if score @s show_trace matches 1 at @a[gamemode=survival] run summon area_effect_cloud ~ ~ ~ {Duration:1200,Particle:""}