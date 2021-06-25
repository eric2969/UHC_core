#########################################################
# UHC Project 
# Name    : exchange.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : Yes. Executed by tag=main
# func    : Summon/Kill mine exchange villager and handle player CD
#########################################################

#summon villager
execute as @a[predicate=uhc:sneak_on_copper,tag=!summon] run function uhc:apply/exchange_check
tag @a[predicate=!uhc:sneak_on_copper] remove summon

#kill villager
execute as @e[tag=exchange,scores={exchange=..0}] at @s run tp @s ~ -100 ~

#cool down
scoreboard players remove @a[scores={exchange=0..}] exchange 1
scoreboard players remove @e[tag=exchange] exchange 1
#execute as @e[tag=exchange] run scoreboard players operation @s exchange_time = @s exchange
#execute as @e[tag=exchange] run scoreboard players operation @s exchange_time /= const5 V