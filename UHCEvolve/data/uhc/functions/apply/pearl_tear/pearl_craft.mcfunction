###################################################
# UHC Project 
# Name    : pearl_craft.mcfunction 
# Made by : jelly99709 
# Path    : /apply/pearl_tear/
# Loop    : No. Execute as players.
# func    : Handle pearl_tear craft.
###################################################

execute if entity @s[team=red] run tag @a[team=red] add pearl_craft
execute if entity @s[team=blue] run tag @a[team=blue] add pearl_craft
execute if entity @s[team=green] run tag @a[team=green] add pearl_craft
execute if entity @s[team=yellow] run tag @a[team=yellow] add pearl_craft
execute if entity @s[team=purple] run tag @a[team=purple] add pearl_craft
execute if entity @s[team=gray] run tag @a[team=gray] add pearl_craft
execute if entity @s[team=red_dark] run tag @a[team=red_dark] add pearl_craft
execute if entity @s[team=blue_dark] run tag @a[team=blue_dark] add pearl_craft
execute if entity @s[team=green_dark] run tag @a[team=green_dark] add pearl_craft
execute if entity @s[team=gold] run tag @a[team=gold] add pearl_craft
execute if entity @s[team=pink] run tag @a[team=pink] add pearl_craft
execute if entity @s[team=gray_dark] run tag @a[team=gray_dark] add pearl_craft
execute if entity @s[team=aqua] run tag @a[team=aqua] add pearl_craft
execute if entity @s[team=aqua_dark] run tag @a[team=aqua_dark] add pearl_craft
execute if entity @s[team=betrayer] run tag @a[team=betrayer] add pearl_craft

execute if entity @s[team=red] run recipe take @a[team=red] uhc:pearl_tear
execute if entity @s[team=blue] run recipe take @a[team=blue] uhc:pearl_tear
execute if entity @s[team=green] run recipe take @a[team=green] uhc:pearl_tear
execute if entity @s[team=yellow] run recipe take @a[team=yellow] uhc:pearl_tear
execute if entity @s[team=purple] run recipe take @a[team=purple] uhc:pearl_tear
execute if entity @s[team=gray] run recipe take @a[team=gray] uhc:pearl_tear
execute if entity @s[team=red_dark] run recipe take @a[team=red_dark] uhc:pearl_tear
execute if entity @s[team=blue_dark] run recipe take @a[team=blue_dark] uhc:pearl_tear
execute if entity @s[team=green_dark] run recipe take @a[team=green_dark] uhc:pearl_tear
execute if entity @s[team=gold] run recipe take @a[team=gold] uhc:pearl_tear
execute if entity @s[team=pink] run recipe take @a[team=pink] uhc:pearl_tear
execute if entity @s[team=gray_dark] run recipe take @a[team=gray_dark] uhc:pearl_tear
execute if entity @s[team=aqua] run recipe take @a[team=aqua] uhc:pearl_tear
execute if entity @s[team=aqua_dark] run recipe take @a[team=aqua_dark] uhc:pearl_tear
execute if entity @s[team=betrayer] run recipe take @a[team=betrayer] uhc:pearl_tear

scoreboard players remove @s pearl_craft 1

clear @s heart_of_the_sea 1
give @s heart_of_the_sea{display:{Name:"{\"text\":\"碧藍之淚\",\"color\":\"aqua\",\"italic\":true}",Lore:["{\"text\":\"持有者死亡時，全體隊友三秒內回復10點血量。每隊限使用一次\"}"]},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":" 合成","color":"white"},{"text":"碧藍之淚","color":"aqua","Italic":true}]}