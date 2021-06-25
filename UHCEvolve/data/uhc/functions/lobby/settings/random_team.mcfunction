###################################################
# UHC Project 
# Name    : random_team.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/settings
# Loop    : while random-teamed process been called.
# func    : randomly assigns players to teams.
###################################################

#ramdom assignment
execute if score @s random_team_num matches 2.. run team join red @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 2.. run team join blue @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 3.. run team join green @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 4.. run team join yellow @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 5.. run team join purple @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 6.. run team join gray @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 7.. run team join red_dark @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 8.. run team join blue_dark @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 9.. run team join green_dark @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 10.. run team join gold @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 11.. run team join aqua @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 12.. run team join aqua_dark @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 13.. run team join pink @a[sort=random,limit=1,team=solo]
execute if score @s random_team_num matches 14.. run team join gray_dark @a[sort=random,limit=1,team=solo]

#execute if score @s random_team_num matches 2.. run team join red @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 2.. run team join blue @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 3.. run team join green @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 4.. run team join yellow @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 5.. run team join purple @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 6.. run team join gray @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 7.. run team join red_dark @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 8.. run team join blue_dark @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 9.. run team join green_dark @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 10.. run team join gold @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 11.. run team join aqua @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 12.. run team join aqua_dark @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 13.. run team join pink @e[type=armor_stand,sort=random,limit=1,team=solo]
#execute if score @s random_team_num matches 14.. run team join gray_dark @e[type=armor_stand,sort=random,limit=1,team=solo]

#stop condition
#scoreboard players set @s random_team_stop 1
#execute if entity @a[team=solo] run scoreboard players set @s random_team_stop 0
#execute if entity @e[team=solo,type=armor_stand] run scoreboard players set @s random_team_stop 0
#execute if score @s random_team_stop matches 1 run tag @a remove rteam