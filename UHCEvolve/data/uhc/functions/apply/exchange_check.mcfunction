#########################################################
# UHC Project 
# Name    : exchange_check.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : No. Executed by players
# func    : Summon mine exchange villager
#########################################################

tag @s add summon

#check validation
scoreboard players operation @s exchange_time = @s exchange
scoreboard players operation @s exchange_time /= const5 V
execute if score @s exchange matches 1.. run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"距離召喚礦物交換商人冷卻時間結束還有 ","color":"white"},{"score":{"name":"@s","objective":"exchange_time"},"color":"gold"},{"text":" 秒","color":"white"}]}
execute if score @s exchange matches ..0 at @s if entity @e[tag=exchange,distance=..5] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"附近已存在礦物交換商人","color":"white"}]}

#summon
execute if score @s exchange matches ..0 at @s unless entity @e[tag=exchange,distance=..5] run function uhc:apply/exchange_summon
