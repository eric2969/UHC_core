#########################################################
# UHC Project 
# Name    : teleport_2.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/room_tp/
# Loop    : No. Execute as tag=solo_tp
# func    : Teleport players for room mode.
#########################################################

tp @a[team=solo] ~ ~ ~
tp @a[team=spec] ~ ~ ~
tp @a[team=betrayer] ~ ~ ~
tp @a[team=winner] ~ ~ ~
execute at @e[tag=r_tp] run tp @a[team=red] ~ ~ ~ facing entity @s eyes
execute at @e[tag=b_tp] run tp @a[team=blue] ~ ~ ~ facing entity @s eyes
execute at @e[tag=gr_tp] run tp @a[team=green] ~ ~ ~ facing entity @s eyes
execute at @e[tag=y_tp] run tp @a[team=yellow] ~ ~ ~ facing entity @s eyes
execute at @e[tag=pr_tp] run tp @a[team=purple] ~ ~ ~ facing entity @s eyes
execute at @e[tag=gy_tp] run tp @a[team=gray] ~ ~ ~ facing entity @s eyes
execute at @e[tag=rd_tp] run tp @a[team=red_dark] ~ ~ ~ facing entity @s eyes
execute at @e[tag=bd_tp] run tp @a[team=blue_dark] ~ ~ ~ facing entity @s eyes
execute at @e[tag=grd_tp] run tp @a[team=green_dark] ~ ~ ~ facing entity @s eyes
execute at @e[tag=yd_tp] run tp @a[team=gold] ~ ~ ~ facing entity @s eyes
execute at @e[tag=pk_tp] run tp @a[team=pink] ~ ~ ~ facing entity @s eyes
execute at @e[tag=gyd_tp] run tp @a[team=gray_dark] ~ ~ ~ facing entity @s eyes
execute at @e[tag=aq_tp] run tp @a[team=aqua] ~ ~ ~ facing entity @s eyes
execute at @e[tag=aqd_tp] run tp @a[team=aqua_dark] ~ ~ ~ facing entity @s eyes