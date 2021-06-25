###################################################
# UHC Project 
# Name    : game3.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism 3.
###################################################

#night_vision
execute if score @s night_vision matches 1.. run effect give @a[gamemode=!spectator] night_vision 999999 0 true
effect give @a[gamemode=spectator] night_vision 999999 0 true

#gold head
execute as @a[scores={gold_head=1..}] at @s run function uhc:apply/gold_head
execute as @a[scores={gh_craft=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:creeper_head"}]}] at @s run function uhc:apply/gh_craft

#information
scoreboard players operation 現在時間 information = @s timer_min

#notch_apple
execute if score @s notch_apple matches 0 as @a[nbt={Inventory:[{id:"minecraft:enchanted_golden_apple"}]}] run function uhc:apply/notch_apple

#height limit
execute if score @s ground_limit matches 2 run function uhc:gameloop/event/ground_penalty

#random silverfish
execute as @e[type=item,nbt={Item:{id:"minecraft:debug_stick"}}] at @s run function uhc:apply/rand_silverfish

#random chest penalty
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}] at @s run function uhc:apply/random_chest_bad

#battle royale hint
execute if score @s BR_stage matches 1..8 run function uhc:gameloop/event/battle_royale/self_check_1

#fish bucket craft correction
execute as @a[scores={cod=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/cod