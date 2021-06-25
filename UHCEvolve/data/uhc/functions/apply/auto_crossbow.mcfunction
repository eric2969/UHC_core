#########################################################
# UHC Project 
# Name    : auto_crossbow.mcfunction 
# Made by : jelly99709
# Path    : /apply/
# Loop    : No. Execute as players.
# func    : Charge crossbow in mainhand automatically
#########################################################

data modify entity @s SelectedItem.tag merge value {Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}
execute if data entity @s SelectedItem.tag run clear @s arrow 1