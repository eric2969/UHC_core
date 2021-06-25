#########################################################
# UHC Project 
# Name    : book_controller.mcfunction 
# Made by : jelly99709
# Path    : /lobby/book/
# Loop    : No. Called in lobby stage.
# func    : Handle all book-setting sub-functions.
#########################################################

#non-used number: 12~15, 30, 34, 70, 100~102, 120~
#nether-used number: 1000~1001, 1005, 1021~1023, 1031~1034

#play sound
execute as @a[scores={book=1..}] at @s run playsound entity.experience_orb.pickup voice @s ~ ~ ~ 0.7

#### first book (book0) ################################################################################################################################

#book = 1 ~ 2, team number
execute if entity @a[scores={book=1..2}] run function uhc:lobby/settings/team_num

#book = 3, random-teamed
execute if entity @a[scores={book=3}] run scoreboard players set @s random_team_stop 0

#book = 10, clear team
execute if entity @a[scores={book=10}] run team join solo @a[tag=player,team=!spec]

#book = 4, team permission
execute if entity @a[scores={book=4}] run function uhc:lobby/settings/team_permission

#book = 5, spectator
execute if entity @a[scores={book=5}] run function uhc:lobby/settings/spectator

#book = 27, slow_fall
execute if entity @a[scores={book=27}] run function uhc:lobby/settings/slow_fall

#book = 6 ~ 7, map size
execute if entity @a[scores={book=6..7}] run function uhc:lobby/settings/map_size

#book = 8, pre-read map
execute if entity @a[scores={book=8}] unless entity @a[tag=read_map] at @e[tag=sub2] run setblock ~ ~ ~ repeating_command_block{Command:"execute as 00000000-0000-0000-0000-000000000001 run function uhc:lobby/settings/read_map",auto:1,TrackOutput:0b} replace
execute unless entity @a[tag=read_map] run tag @p[scores={book=8}] add read_map

#book = 9, stop pre-read map
execute if entity @a[scores={book=9}] if entity @a[tag=read_map] run tag @s add stop_map

#book = 10, reset. This option has been remove.
#execute if entity @a[scores={book=10}] run function uhc:reset

#book = 11, game start
execute if entity @a[scores={book=11}] at @e[tag=sub3] run setblock ~ ~ ~ repeating_command_block{Command:"execute as 00000000-0000-0000-0000-000000000001 run function uhc:start_countdown/start_countdown",auto:1b,TrackOutput:0b} replace
execute if entity @a[scores={book=11}] at @e[tag=sub3] unless entity @e[tag=sec] run summon area_effect_cloud ~ ~ ~ {Tags:[sec],Age:-21,Particle:"block air"}

#### second book (book1) ##########################################################################################################################

#book = 16 ~ 17, difficulty 
execute if entity @a[scores={book=16..17}] run function uhc:lobby/settings/difficulty

#book = 18 ~ 20, friendly fire & friendly push & teammate position 
execute if entity @a[scores={book=18..20}] run function uhc:lobby/settings/friend

#book = 21 ~ 22, health display
execute if entity @a[scores={book=21..22}] run function uhc:lobby/settings/health

#book = 23 ~ 25, gold head
execute if entity @a[scores={book=23..25}] run function uhc:lobby/settings/gold_head

#book = 26, night_vision
execute if entity @a[scores={book=26}] run function uhc:lobby/settings/night_vision

#book = 28, allow_diamond
execute if entity @a[scores={book=28}] run function uhc:lobby/settings/allow_diamond

#book = 29, invisible
execute if entity @a[scores={book=29}] run function uhc:lobby/settings/invisible

#### third book (book2) ##########################################################################################################################

#book = 31 ~ 33, nether
execute if entity @a[scores={book=31..33}] run function uhc:lobby/settings/nether

#book = 106 ~ 112, betrayer
execute if entity @a[scores={book=106..112}] run function uhc:lobby/settings/betray

#book = 35 ~ 40, potion, include notch apple and suspicious stew
execute if entity @a[scores={book=35..40}] run function uhc:lobby/settings/potion

#book = 41, cut clean
execute if entity @a[scores={book=41}] run function uhc:lobby/settings/cut_clean

#book = 34, exchange
execute if entity @a[scores={book=34}] run function uhc:lobby/settings/exchange

#book = 42, advancement announce
execute if entity @a[scores={book=42}] run function uhc:lobby/settings/adv

#### fourth book (book3) ##########################################################################################################################

#book = 43 ~ 51, border settings
execute if entity @a[scores={book=43..51}] run function uhc:lobby/settings/border_mode

#book = 66 ~ 67, battle royale time interval
execute if entity @a[scores={book=66..69}] run function uhc:lobby/settings/br_interval

#book = 52 ~ 56, time stop
execute if entity @a[scores={book=52..56}] run function uhc:lobby/settings/time_stop

#book = 57 ~ 59, moster clean
execute if entity @a[scores={book=57..59}] run function uhc:lobby/settings/monster_clean

#book = 60 ~ 62, name hide
execute if entity @a[scores={book=60..62}] run function uhc:lobby/settings/hide_name

#book = 63 ~ 65, glowing
execute if entity @a[scores={book=63..65}] run function uhc:lobby/settings/glow

#### fifth book (book4) ##########################################################################################################################

#book = 95 ~ 99, weather
execute if entity @a[scores={book=95..99}] run function uhc:lobby/settings/weather

#book = 71 ~ 75, limit height
execute if entity @a[scores={book=71..75}] run function uhc:lobby/settings/sky_limit

#book = 76 ~ 80, limit under ground
execute if entity @a[scores={book=76..80}] run function uhc:lobby/settings/ground_limit

#book = 81 ~ 83, room
execute if entity @a[scores={book=81..83}] run function uhc:lobby/settings/room

#book = 89, room check, trigger by clickEvent
execute if entity @a[scores={book=89}] run function uhc:lobby/settings/room_check

#### book5 #######################################################################################################################################

#book = 113 ~ 119, branch mine
execute if entity @a[scores={book=113..119}] run function uhc:lobby/settings/branch_mine

#book = 85, random silverfish
execute if entity @a[scores={book=85}] run function uhc:lobby/settings/rand_silver

#book = 86, random golden apple
execute if entity @a[scores={book=86}] run function uhc:lobby/settings/rand_apple

#book = 87, reverse craft of golden equipmentxs
#execute if entity @a[scores={book=87}] run function uhc:lobby/settings/golden_craft

#book = 88, custom saddle recipe
execute if entity @a[scores={book=88}] run function uhc:lobby/settings/saddle_craft

#book = 90, custom fish bucket recipe
execute if entity @a[scores={book=90}] run function uhc:lobby/settings/fish_craft

#book = 104 ~ 105, nerf arrow
execute if entity @a[scores={book=104..105}] run function uhc:lobby/settings/nerf_arrow

#book = 103, automatic crossbow
#execute if entity @a[scores={book=103}] run function uhc:lobby/settings/auto_crossbow

#book = 103, nerf crossbow
execute if entity @a[scores={book=103}] run function uhc:lobby/settings/nerf_crossbow

#book = 92 ~ 94, random chest
execute if entity @a[scores={book=92..94}] run function uhc:lobby/settings/random_chest

#book = 91, fishing rush
execute if entity @a[scores={book=91}] run function uhc:lobby/settings/fish_rush

#book = 84, pearl tear
execute if entity @a[scores={book=84}] run function uhc:lobby/settings/pearl_tear

#book = 70, shadow-invisible
execute if entity @a[scores={book=70}] run function uhc:lobby/settings/shadow

#book = 1031~1034, initial supply
execute if entity @a[scores={book=1031}] run function uhc:lobby/settings/init_supply
execute if entity @a[scores={book=1032..1034}] run function uhc:lobby/settings/init_supply_set


#### reset ########################################################################################################################################

scoreboard players reset @a book