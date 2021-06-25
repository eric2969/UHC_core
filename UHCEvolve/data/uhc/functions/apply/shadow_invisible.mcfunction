#########################################################
# UHC Project 
# Name    : shadow_invisible.mcfunction 
# Made by : jelly99709
# Path    : /apply/
# Loop    : No. Execute as tag=main.
# func    : Give/Clear invisible effect for players and mobs
#########################################################

#give
#tellraw @a[gamemode=survival,predicate=uhc:shadow,predicate=!uhc:invisible_effect] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"你已隱身於黑暗 --- ","color":"white"},{"text":"「黑暗越發純粹，我的內心就越發平靜」","color":"dark_purple","italic":true}]}
effect give @a[predicate=uhc:shadow] invisibility 999999 0 true
effect give @e[type=#uhc:mob,predicate=uhc:shadow] invisibility 999999 0 true

#clear
#execute unless entity @s[scores={invisible=1,timer=..9}] run tellraw @a[gamemode=survival,predicate=!uhc:shadow,predicate=uhc:invisible_effect] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"你已現形!","color":"red"}]}
execute unless entity @s[scores={invisible=1,timer=..9}] run effect clear @a[predicate=!uhc:shadow] invisibility
effect clear @e[type=#uhc:mob,predicate=!uhc:shadow] invisibility