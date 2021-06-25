#########################################################
# UHC Project 
# Name    : self_team.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/settings
# Loop    : No. Called while someone choose team.
# func    : To let players join team they have chosen.
#########################################################

#choose team
execute as @p[scores={choose_team=3},team=!red] run team join red @a[scores={choose_team=3},team=!red]
execute as @p[scores={choose_team=4},team=!blue] run team join blue @a[scores={choose_team=4},team=!blue]
execute as @p[scores={choose_team=5},team=!green] run team join green @a[scores={choose_team=5},team=!green]
execute as @p[scores={choose_team=6},team=!yellow] run team join yellow @a[scores={choose_team=6},team=!yellow]
execute as @p[scores={choose_team=7},team=!purple] run team join purple @a[scores={choose_team=7},team=!purple]
execute as @p[scores={choose_team=8},team=!gray] run team join gray @a[scores={choose_team=8},team=!gray]
execute as @p[scores={choose_team=9},team=!red_dark] run team join red_dark @a[scores={choose_team=9},team=!red_dark]
execute as @p[scores={choose_team=10},team=!blue_dark] run team join blue_dark @a[scores={choose_team=10},team=!blue_dark]
execute as @p[scores={choose_team=11},team=!green_dark] run team join green_dark @a[scores={choose_team=11},team=!green_dark]
execute as @p[scores={choose_team=12},team=!gold] run team join gold @a[scores={choose_team=12},team=!gold]
execute as @p[scores={choose_team=13},team=!aqua] run team join aqua @a[scores={choose_team=13},team=!aqua]
execute as @p[scores={choose_team=14},team=!aqua_dark] run team join aqua_dark @a[scores={choose_team=14},team=!aqua_dark]
execute as @p[scores={choose_team=15},team=!pink] run team join pink @a[scores={choose_team=15},team=!pink]
execute as @p[scores={choose_team=16},team=!gray_dark] run team join gray_dark @a[scores={choose_team=16},team=!gray_dark]