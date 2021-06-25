###################################################
# UHC Project 
# Name    : game1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism 1.
###################################################

#action bar information
execute as @a run title @s actionbar {"text":"","color":"light_purple","bold":true,"extra":[{"text":"中心座標: ("},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posX"}},{"text":","},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posZ"}},{"text":")  擊殺數: "},{"score":{"name":"@s","objective":"temp_kill"}},{"text":"  挖掘石頭數: "},{"score":{"name":"@s","objective":"temp_stone"}}]}

#join game
execute as @a[tag=!game_start] run function uhc:gameloop/join_game

#damage notifier
execute unless entity @e[tag=win] as @a[scores={warn=1..},gamemode=survival] run function uhc:gameloop/damage

#slow fall barrier check
execute if score @s slow_fall matches 0 if score @s timer_min matches 0 as @a at @s if block ~ ~-1 ~ barrier run tp @s ~ ~-1 ~

#stew_take
execute if score @s stew_get matches 0 as @a[nbt={Inventory:[{id:"minecraft:suspicious_stew"}]}] run function uhc:apply/sus_stew
#execute if score @s stew_get matches 0 run clear @a suspicious_stew

#nether
execute if score @s nether_open matches ..0 run function uhc:gameloop/event/nether_penalty

#cut clean
execute if score @s cut_clean matches 1 run function uhc:apply/cut_clean

#exchange
execute if score @s exchange matches 1 run function uhc:apply/exchange

#branch_bomb
execute as @e[type=item,nbt={Item:{id:"minecraft:tropical_fish_spawn_egg"}}] at @s run function uhc:apply/branch_bomb

#auto crossbow
#execute if score @s auto_crossbow matches 1 as @a[nbt={SelectedItem:{id:"minecraft:crossbow"},Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={SelectedItem:{tag:{Charged:1b}}}] unless data entity @s SelectedItem.tag.Enchantments run function uhc:apply/auto_crossbow

#nerf crossbow
execute if score @s nerf_crossbow matches 1 run function uhc:apply/nerf_crossbow

#fish bucket craft correction
execute as @a[scores={pufferfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/pufferfish