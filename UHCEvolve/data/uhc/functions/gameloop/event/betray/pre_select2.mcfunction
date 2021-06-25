#########################################################
# UHC Project 
# Name    : pre_select1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute as and at tag=main
# func    : Select betrayer candidates from each team. Number of betrayers more than teams.
#########################################################

tag @a[team=solo,gamemode=survival] add candidate
execute if entity @a[team=red,gamemode=survival] run tag @r[team=red,limit=1,gamemode=survival] add candidate
execute if entity @a[team=blue,gamemode=survival] run tag @r[team=blue,limit=1,gamemode=survival] add candidate
execute if entity @a[team=green,gamemode=survival] run tag @r[team=green,limit=1,gamemode=survival] add candidate
execute if entity @a[team=yellow,gamemode=survival] run tag @r[team=yellow,limit=1,gamemode=survival] add candidate
execute if entity @a[team=purple,gamemode=survival] run tag @r[team=purple,limit=1,gamemode=survival] add candidate
execute if entity @a[team=gray,gamemode=survival] run tag @r[team=gray,limit=1,gamemode=survival] add candidate
execute if entity @a[team=red_dark,gamemode=survival] run tag @r[team=red_dark,limit=1,gamemode=survival] add candidate
execute if entity @a[team=blue_dark,gamemode=survival] run tag @r[team=blue_dark,limit=1,gamemode=survival] add candidate
execute if entity @a[team=green_dark,gamemode=survival] run tag @r[team=green_dark,limit=1,gamemode=survival] add candidate
execute if entity @a[team=gold,gamemode=survival] run tag @r[team=gold,limit=1,gamemode=survival] add candidate
execute if entity @a[team=pink,gamemode=survival] run tag @r[team=pink,limit=1,gamemode=survival] add candidate
execute if entity @a[team=gray_dark,gamemode=survival] run tag @r[team=gray_dark,limit=1,gamemode=survival] add candidate
execute if entity @a[team=aqua,gamemode=survival] run tag @r[team=aqua,limit=1,gamemode=survival] add candidate
execute if entity @a[team=aqua_dark,gamemode=survival] run tag @r[team=aqua_dark,limit=1,gamemode=survival] add candidate