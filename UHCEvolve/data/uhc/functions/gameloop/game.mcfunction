###################################################
# UHC Project 
# Name    : game.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism.
###################################################

#damage notifier.
execute unless entity @e[tag=win] as @a[scores={warn=1..},gamemode=survival] run function uhc:gameloop/damage

#action bar information.
execute as @a run title @s actionbar {"text":"","color":"light_purple","bold":true,"extra":[{"text":"中心座標: ("},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posX"}},{"text":","},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posZ"}},{"text":")  擊殺數: "},{"score":{"name":"@s","objective":"temp_kill"}},{"text":"  挖掘石頭數: "},{"score":{"name":"@s","objective":"temp_stone"}}]}

#Y position.
execute as @a[gamemode=survival] store result score @s posY run data get entity @s Pos[1]

#death.
execute as @a[scores={death=1..},gamemode=survival] at @s run function uhc:gameloop/death

#join game
execute as @a[tag=!game_start] run function uhc:gameloop/join_game

#chunk loader
#execute unless entity @a[gamemode=!spectator,nbt={Dimension:0}] run function uhc:gameloop/chunk_loader

#slow fall barrier check
execute if score @s slow_fall matches 0 if score @s timer_min matches 0 as @a at @s if block ~ ~-1 ~ barrier run tp @s ~ ~-4 ~

#win judge.
execute if score 剩餘隊伍 information matches 1 unless entity @a[tag=win] run function uhc:win

#### option #############################################################################################

#gold head.
execute as @a[scores={gold_head=1..}] at @s run function uhc:apply/gold_head
execute as @a[scores={gh_craft=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:creeper_head"}]}] at @s run function uhc:apply/gh_craft

#night_vision.
execute if score @s night_vision matches 1.. run effect give @a night_vision 999999 0 true
effect give @a[gamemode=spectator] night_vision 999999 0 true

#diamond armor take
execute if score @s allow_diamond matches 0 run clear @a #uhc:diamond

#nether.
execute if score @s nether_open matches ..0 run function uhc:gameloop/event/nether_penalty

#stew_take.
execute if score @s stew_get matches 0 as @a[nbt={Inventory:[{id:"minecraft:suspicious_stew"}]}] run function uhc:apply/sus_stew
#execute if score @s stew_get matches 0 run clear @a suspicious_stew

#potion_brew.
execute if score @s potion_brew matches 0 run clear @a #uhc:brew

#potion_regen.
#execute if score @s potion_regen matches 0 run clear @a ghast_tear

#potion_reinforce.
#execute if score @s potion_reinforce matches 0 as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run data merge entity @s {Item:{id:"minecraft:glowstone"}}

#potion_turtle.
#execute if entity @s[scores={potion_turtle=0,potion_brew=1}] run function uhc:apply/potion_turtle

#notch_apple.
execute if score @s notch_apple matches 0 as @a[nbt={Inventory:[{id:"minecraft:enchanted_golden_apple"}]}] run function uhc:apply/notch_apple

#cut clean.
execute if score @s cut_clean matches 1 run function uhc:apply/cut_clean

#exchange
execute if score @s exchange matches 1 run function uhc:apply/exchange

#monster clean.
execute if score @s monster_clean matches 2 as @e[type=#uhc:hostile] at @s run tp @s ~ -999999 ~

#glow.
execute if score @s glowing matches 2 run effect give @a glowing 999999 0 true

#height limit.
execute if score @s sky_limit matches 2 run function uhc:gameloop/event/sky_penalty
execute if score @s ground_limit matches 2 run function uhc:gameloop/event/ground_penalty

#branch mined penalty.
execute as @a[scores={stone_penalty_d=1..}] run function uhc:apply/branch_count
execute if score @s branch_mine matches 1 as @a[scores={stone_penalty=100..}] run function uhc:apply/branch_penalty_effect
execute as @e[type=item,nbt={Item:{id:"minecraft:tropical_fish_spawn_egg"}}] at @s run function uhc:apply/branch_bomb

#random silverfish.
#execute if score @s rand_silverfish matches 1 at @a[scores={silver=1..}] run function uhc:apply/rand_silverfish
execute as @e[type=item,nbt={Item:{id:"minecraft:debug_stick"}}] at @s run function uhc:apply/rand_silverfish

#random apple.
#execute if score @s rand_apple matches 1 at @a[scores={leaf=1..,shear=0}] run function uhc:apply/rand_apple
#scoreboard players set @a[scores={shear=1..}] shear 0

#nerf arrow.
execute if score @s nerf_arrow matches 1 as @e[type=#uhc:arrow,tag=!arrow] run function uhc:apply/nerf_arrow

#auto crossbow
#execute if score @s auto_crossbow matches 1 as @a[nbt={SelectedItem:{id:"minecraft:crossbow"},Inventory:[{id:"minecraft:arrow"}]}] unless entity @s[nbt={SelectedItem:{tag:{Charged:1b}}}] unless data entity @s SelectedItem.tag.Enchantments run function uhc:apply/auto_crossbow

#nerf crossbow
execute if score @s nerf_crossbow matches 1 run function uhc:apply/nerf_crossbow

#fish rush
#execute if score @s fish_rush matches 1 as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] unless data entity @s SelectedItem.tag.FishRush run data modify entity @s SelectedItem.tag merge value {FishRush:1}
execute if score @s fish_rush matches 1 as @a[predicate=uhc:fishing1,predicate=uhc:fishing2] run loot replace entity @s weapon.mainhand loot uhc:fish_rush

#pearl tear
execute if score @s pearl_tear matches 1 run function uhc:apply/pearl_tear/pearl_detect

#shawdow-invisible
execute if score @s shadow_invisible matches 1 run function uhc:apply/shadow_invisible

#random chest penalty.
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}] at @s run function uhc:apply/random_chest_bad

#battle royale hint.
execute if score @s BR_stage matches 1..8 as @a run function uhc:gameloop/event/battle_royale/self_check 

#fish bucket craft correction
execute as @a[scores={cod=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/cod
execute as @a[scores={salmon=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/salmon
execute as @a[scores={pufferfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/pufferfish
execute as @a[scores={tropicalfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/tropicalfish

###########################################################################################

#timer.
execute at @s unless entity @e[tag=min] run function uhc:gameloop/check_event

#information.
scoreboard players operation 現在時間 information = @s timer_min
#execute store result score 剩餘人數 information run execute if entity @a[team=!spec,gamemode=survival]
execute store result score 邊界大小 information run worldborder get
#scoreboard players operation 剩餘隊伍 information = @s remain