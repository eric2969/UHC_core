###################################################
# UHC Project 
# Name    : go.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No. Execute as tag=main
# func    : To end lobby stage and start game_loop stage
###################################################

#clear effect, inventory, experience, advancement and recipe
effect clear @a
clear @a
xp set @a 0 points
xp set @a 0 levels
advancement revoke @a everything

#initial supply
execute if score @s init_supply matches 1 at @s as @a[team=!spec] run loot give @s mine ~ 2 ~ diamond_pickaxe{Init:1b}

#give effect
effect give @a instant_health 1 9 true
effect give @a[team=!spec] resistance 40 9 true
effect give @a[team=!spec] hunger 15 3 true
effect give @a[team=spec] night_vision 999999 0 true
execute if score @s spec_permission matches 0 run effect give @a[team=spec] blindness 999999 0 true
#move to start_countdown
#execute if score @s slow_fall matches 0 run effect give @a levitation 1 55 true
execute if score @s slow_fall matches 0 run effect give @a slow_falling 30 0 true
execute if score @s invisible matches 1 run effect give @a invisibility 600 0 true

#gamemode
gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]

#gamerule
gamerule naturalRegeneration false
gamerule doFireTick false
gamerule doMobSpawning true
gamerule doWeatherCycle true
gamerule doDaylightCycle true
gamerule disableRaids false
gamerule doPatrolSpawning true
gamerule doTraderSpawning true
gamerule doInsomnia true
gamerule doLimitedCrafting true
time set day
weather thunder 1

#information
scoreboard players reset 人數 information

#book settings --- difficulty
execute if score @s diff matches 0 run difficulty peaceful
execute if score @s diff matches 1 run difficulty easy
execute if score @s diff matches 2 run difficulty normal
execute if score @s diff matches 3 run difficulty hard

#book settings --- friendly fire
execute if score @s friend_fire matches 0 run function uhc:apply/friend_fire

#book settings --- friendly push
execute if score @s friend_push matches 0 run function uhc:apply/friend_push

#book settings --- tab health
execute if score @s tab_health matches 1 run scoreboard objectives setdisplay list health

#book settings --- belowName health
execute if score @s name_health matches 1 run scoreboard objectives setdisplay belowName health

#book settings --- advancement announce
execute if score @s advance_announce matches 1 run gamerule announceAdvancements true

#stew get
execute if score @s stew_get matches 0 run function uhc:apply/stew_take

#book settings --- hide name
execute if score @s hide_name matches 1 run function uhc:apply/name_visible_false

#book settings --- room
#execute at @e[tag=assist,scores={room=0}] run setblock ~ 126 ~ redstone_block replace

#book settings --- reverse_craft
#execute if score @s reverse_craft matches 0 run function uhc:apply/golden_craft

#book settings --- saddle_craft
execute if score @s saddle matches 0 run function uhc:apply/saddle_craft

#book settings --- fish_bucket craft
execute if score @s fish_bucket matches 0 run function uhc:apply/fish_craft

#book settings --- pearl tear
execute if score @s pearl_tear matches 0 run function uhc:setting/pearl_tear/no_pearl

#book settings --- battle royale moving factor
scoreboard players operation @s BR_factor /= @s BR_shrink_time

#spreadplayers 
execute if score @s slow_fall matches 1 run function uhc:apply/spread_1
#execute if score @s slow_fall matches 0 as @a at @s run tp @s ~ 147 ~
#function uhc:apply/spread_1

#start sound
execute if score @s slow_fall matches 1 as @a at @s run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 0.5

#clear lobby
execute at @s run fill ~-8 150 ~-8 ~7 160 ~7 air
execute if score @s betray matches 0 at @s run fill ~-9 149 ~-9 ~8 160 ~8 air
tp @s 00000000-0000-0000-0000-000000000002
kill @e[tag=show]
kill @e[type=item]
kill @e[tag=lottery]
execute as @e[tag=bee] at @s run tp @s ~ -100 ~
kill @e[tag=nether]
execute as @e[tag=piglin] at @s run tp @s ~ -100 ~
kill @e[type=#uhc:hostile_normal]

#clear room setting ambiguity
execute at 00000000-0000-0000-0000-000000000002 run setblock ~ 125 ~ air replace
execute at 00000000-0000-0000-0000-000000000002 run setblock ~ 126 ~ air replace

#book settings about scoreboard --- friends position
#scoreboard players set @a think 0

#book settings about scoreboard --- time stop
execute if score @s day_time matches 0 if score @s day_stop matches 1 run function uhc:gameloop/event/day
execute if score @s day_time matches 0 if score @s day_stop matches 1 if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run time set midnight
execute if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run scoreboard players operation @s day_time -= const7 VII

#book settings about scoreboard --- branch_mine
scoreboard players set @a stone_penalty 100
scoreboard players operation @a stone_penalty -= @s branch_limit
scoreboard players set @a stone_penalty_d 0

#book settings about scoreboard --- random apple
#scoreboard players set @a leaf 0
#scoreboard players set @a shear 0

#tag
tag @a add game_start
execute if score 00000000-0000-0000-0000-000000000001 rand_silverfish matches 1 run tag @a add silverfish
execute if score 00000000-0000-0000-0000-000000000001 rand_apple matches 1 run tag @a add lucky_leaves
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 1 if score 00000000-0000-0000-0000-000000000010 gh_mode matches 1 run tag @a add gold_head_normal
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 0 run recipe take @a uhc:gold_head
execute if score 00000000-0000-0000-0000-000000000010 gh_mode matches 0 run recipe take @a uhc:gold_head
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 1 if score 00000000-0000-0000-0000-000000000011 gh_mode matches 1 run tag @a add gold_head_fast
execute if score 00000000-0000-0000-0000-000000000001 pearl_tear matches 1 run tag @a add pearl_tear

#notifier
scoreboard players operation @s nether_notifier = @s nether_time
scoreboard players operation @s nether_notifier -= const5 V
scoreboard players operation @s gnd_notifier = @s ground_time
scoreboard players operation @s gnd_notifier -= const5 V
scoreboard players operation @s sky_notifier = @s sky_time
scoreboard players operation @s sky_notifier -= const5 V
scoreboard players operation @s betray_notifier = @s betray_time
scoreboard players operation @s betray_notifier -= const3 III

#stats reset
scoreboard players set @a death 0
scoreboard players set @a temp_kill 0
scoreboard players set @a temp_stone 0
scoreboard players set @a temp_diamond 0
scoreboard players set @a temp_gold 0
scoreboard players set @a temp_stone_d 0
scoreboard players set @a temp_diamond_d 0
scoreboard players set @a temp_gold_d 0
scoreboard players set @a temp_apple 0
scoreboard players set @a temp_hurt 0
scoreboard players set @a gold_head 0
scoreboard players set @a gh_craft 0
scoreboard players set @a branch_bomb_num 0
scoreboard players set @a cod 0
scoreboard players set @a salmon 0
scoreboard players set @a pufferfish 0
scoreboard players set @a tropicalfish 0
scoreboard players set @a pearl_craft 0

scoreboard players set @a exchange 0

#judge system
execute as @a[team=solo] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,solo]}
execute if entity @a[team=red] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,r]}
execute if entity @a[team=blue] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,b]}
execute if entity @a[team=green] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,gr]}
execute if entity @a[team=yellow] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,y]}
execute if entity @a[team=purple] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,pr]}
execute if entity @a[team=gray] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,gy]}
execute if entity @a[team=red_dark] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,rd]}
execute if entity @a[team=blue_dark] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,bd]}
execute if entity @a[team=green_dark] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,grd]}
execute if entity @a[team=gold] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,yd]}
execute if entity @a[team=pink] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,pk]}
execute if entity @a[team=gray_dark] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,gyd]}
execute if entity @a[team=aqua] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,aq]}
execute if entity @a[team=aqua_dark] at 00000000-0000-0000-0000-000000000005 run summon marker ~ ~ ~ {Tags:[carry,ref,aqd]}

#center position recorder
execute store result score @s posX run data get entity 00000000-0000-0000-0000-000000000009 Pos[0]
execute store result score @s posZ run data get entity 00000000-0000-0000-0000-000000000009 Pos[2]

#remain team number record
execute store result score 剩餘隊伍 information run execute if entity @e[tag=ref]

#random chest
execute if score @s random_chest matches 1 run function uhc:apply/random_chest 

#next stage
scoreboard players set @s state 2

#information
execute store result score 剩餘人數 information run execute if entity @a[team=!spec,gamemode=survival]

#start timing
#execute at @e[tag=assist] run summon area_effect_cloud ~ ~ ~ {Tags:[min],Age:-1201,Particle:"block air"}
function uhc:gameloop/check_event