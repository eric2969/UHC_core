#########################################################
# UHC Project 
# Name    : gh_craft.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : No. Execute by players.
# func    : give gold head.
#########################################################

clear @s creeper_head 1
summon item ~ ~1 ~ {Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:"{\"text\":\"§5金頭顱 - 死亡特典\"}",Lore:["{\"text\":\"§f點擊右鍵使用，回復8點血量並獲得2分鐘吸收一效果\"}"]},Recipes:["minecraft:golden_apple"],Enchantments:[{id:"minecraft:loyalty",lvl:1}],HideFlags:1}},PickupDelay:0s,Invulnerable:1}

scoreboard players set @s gh_craft 0