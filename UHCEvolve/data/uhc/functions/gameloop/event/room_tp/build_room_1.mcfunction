#########################################################
# UHC Project 
# Name    : build_room_1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/room_tp/
# Loop    : Not been used.
# func    : Build sample room.
#########################################################

summon area_effect_cloud ~ ~ ~ {Tags:[tp,solo_tp],Duration:2147483647,Particle:"block air"}

execute as @e[tag=solo_tp] at @s run tp @s ~-0.5 ~0.5 ~-0.5

execute at @e[tag=solo_tp] rotated 45 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,r_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 70 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,rd_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 96 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,pk_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 122 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,y_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 148 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,yd_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 174 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,gy_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 200 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,aqd_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 225 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,b_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 250 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,bd_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 276 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,gyd_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 302 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,gr_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 328 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,grd_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 354 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,pr_tp],Duration:2147483647,Particle:"block air"}
execute at @e[tag=solo_tp] rotated 20 0 run summon area_effect_cloud ^ ^ ^7 {Tags:[tp,aq_tp],Duration:2147483647,Particle:"block air"}

execute at @e[tag=solo_tp] run fill ~-9 ~-1 ~-9 ~8 ~4 ~8 bedrock hollow
execute at @e[tag=solo_tp] run fill ~-9 ~5 ~-9 ~8 ~6 ~8 barrier