###################################################
# UHC Project 
# Name    : reset.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No
# func    : To uninstall game settings.
###################################################

#gamerule reset
gamerule doDaylightCycle true
gamerule doFireTick true
gamerule doMobSpawning true
gamerule doWeatherCycle true
gamerule announceAdvancements true
gamerule commandBlockOutput true
gamerule sendCommandFeedback true
gamerule logAdminCommands true
gamerule disableElytraMovementCheck false
gamerule spectatorsGenerateChunks true
gamerule spawnRadius 10
gamerule doLimitedCrafting false
gamerule naturalRegeneration true
gamerule disableRaids false
gamerule playersSleepingPercentage 100
weather thunder 1
worldborder set 2999998
time set day

#remove bossbar
bossbar remove uhc:read_progress
bossbar remove uhc:safe
bossbar remove uhc:danger

#remove scoreboard
scoreboard objectives remove state
scoreboard objectives remove underclock
scoreboard objectives remove random_team_stop
scoreboard objectives remove random_team_num
scoreboard objectives remove book
scoreboard objectives remove team_permission
scoreboard objectives remove choose_team
scoreboard objectives remove spec_permission
scoreboard objectives remove map_size
scoreboard objectives remove width_chunk
scoreboard objectives remove inv_width_chunk
scoreboard objectives remove Xchunk
scoreboard objectives remove Zchunk
scoreboard objectives remove corner
scoreboard objectives remove inv_corner
scoreboard objectives remove read_map_state
scoreboard objectives remove timer0_25
scoreboard objectives remove timer_sec
scoreboard objectives remove timer_min
scoreboard objectives remove diff
scoreboard objectives remove slow_fall
scoreboard objectives remove friend_fire
scoreboard objectives remove friend_push
scoreboard objectives remove tab_health
scoreboard objectives remove name_health
scoreboard objectives remove gold_head
scoreboard objectives remove gh_mode
scoreboard objectives remove gh_craft
scoreboard objectives remove night_vision
scoreboard objectives remove allow_diamond
scoreboard objectives remove invisible
scoreboard objectives remove nether_open
scoreboard objectives remove nether_time
scoreboard objectives remove betray
scoreboard objectives remove betray_time
scoreboard objectives remove betray_tp
scoreboard objectives remove betray_num
scoreboard objectives remove stew_get
scoreboard objectives remove potion_brew
scoreboard objectives remove notch_apple
scoreboard objectives remove cut_clean
scoreboard objectives remove exchange
scoreboard objectives remove exchange_time
scoreboard objectives remove advance_announce
scoreboard objectives remove border_on
scoreboard objectives remove border_mode
scoreboard objectives remove border_start
scoreboard objectives remove border_move
scoreboard objectives remove border_end
scoreboard objectives remove BR_cool_time
scoreboard objectives remove BR_shrink_time
scoreboard objectives remove day_stop
scoreboard objectives remove day_mode
scoreboard objectives remove day_time
scoreboard objectives remove monster_clean
scoreboard objectives remove monster_time
scoreboard objectives remove hide_name
scoreboard objectives remove hide_time
scoreboard objectives remove glowing
scoreboard objectives remove glow_time
scoreboard objectives remove weather_fix
scoreboard objectives remove weather_mode
scoreboard objectives remove weather_time
scoreboard objectives remove sky_limit
scoreboard objectives remove sky_time
scoreboard objectives remove sky_height
scoreboard objectives remove ground_limit
scoreboard objectives remove ground_time
scoreboard objectives remove ground_height
scoreboard objectives remove room
scoreboard objectives remove room_time
scoreboard objectives remove branch_mine
scoreboard objectives remove branch_limit
scoreboard objectives remove branch_position
scoreboard objectives remove branch_bomb
scoreboard objectives remove branch_bomb_num
scoreboard objectives remove rand_silverfish
scoreboard objectives remove rand_apple
scoreboard objectives remove saddle
scoreboard objectives remove fish_bucket
scoreboard objectives remove nerf_arrow
#scoreboard objectives remove auto_crossbow
scoreboard objectives remove nerf_crossbow
scoreboard objectives remove random_chest
scoreboard objectives remove chest_num
scoreboard objectives remove fish_rush
scoreboard objectives remove pearl_tear
scoreboard objectives remove pearl_craft
scoreboard objectives remove pearl_own
scoreboard objectives remove shadow_invisible
scoreboard objectives remove init_supply
scoreboard objectives remove set_supply
scoreboard objectives remove information
scoreboard objectives remove health
scoreboard objectives remove death
scoreboard objectives remove temp_kill
scoreboard objectives remove temp_stone
scoreboard objectives remove temp_gold
scoreboard objectives remove temp_stone_d
scoreboard objectives remove temp_gold_d
scoreboard objectives remove temp_apple
scoreboard objectives remove temp_diamond
scoreboard objectives remove temp_diamond_d
scoreboard objectives remove temp_hurt
scoreboard objectives remove temp_absorb
scoreboard objectives remove final_kill
scoreboard objectives remove final_stone
scoreboard objectives remove final_gold
scoreboard objectives remove final_apple
scoreboard objectives remove final_diamond
scoreboard objectives remove final_hurt
scoreboard objectives remove warn
scoreboard objectives remove posX
scoreboard objectives remove posY
scoreboard objectives remove posZ
scoreboard objectives remove stone_penalty
scoreboard objectives remove stone_penalty_d
#scoreboard objectives remove silver
#scoreboard objectives remove leaf
#scoreboard objectives remove shear
#scoreboard objectives remove uuid
scoreboard objectives remove I
scoreboard objectives remove III
scoreboard objectives remove V
scoreboard objectives remove VII
scoreboard objectives remove X
scoreboard objectives remove XIII
scoreboard objectives remove C
scoreboard objectives remove sky_notifier
scoreboard objectives remove gnd_notifier
scoreboard objectives remove nether_notifier
scoreboard objectives remove betray_notifier
scoreboard objectives remove BR_move
scoreboard objectives remove BR_xdiff
scoreboard objectives remove BR_zdiff
scoreboard objectives remove BR_factor
scoreboard objectives remove BR_stage
scoreboard objectives remove n_I
scoreboard objectives remove cod
scoreboard objectives remove salmon
scoreboard objectives remove pufferfish
scoreboard objectives remove tropicalfish
scoreboard objectives remove lottery
scoreboard objectives remove lottery_count
scoreboard objectives remove view_settings
#scoreboard objectives remove rescure
#scoreboard objectives remove modify_health
#scoreboard objectives remove rescure_tick
#scoreboard objectives remove rescure_time

#remove tag
tag @a remove player
tag @a remove read_map 
tag @a remove rteam
tag @a remove win
tag @a remove notch
tag @a remove sky
tag @a remove gnd
tag @a remove nether
tag @e remove cook
tag @a remove stone
tag @a remove died
tag @a remove f_kill
tag @a remove f_hurt
tag @a remove f_diamond
tag @a remove f_gold
tag @a remove f_apple
tag @a remove f_stone
tag @a remove danger_x
tag @a remove danger_z
tag @a remove player
tag @a remove game_start
tag @a remove mine_bomb
tag @a remove silverfish
tag @a remove lucky_leaves
tag @a remove gold_head_normal
tag @a remove gold_head_fast
tag @a remove betrayer
tag @a remove candidate
tag @a remove pearl_tear
tag @a remove pearl_craft
tag @a remove pearl_used
tag @a remove touch_bee
tag @a remove summon
#tag @a remove knocked_down
#tag @a remove relife

#remove team
team remove solo
team remove spec
team remove red
team remove blue
team remove green
team remove yellow
team remove purple
team remove gray
team remove red_dark
team remove blue_dark
team remove green_dark
team remove gold
team remove aqua
team remove aqua_dark
team remove pink
team remove gray_dark
team remove betrayer
team remove winner

#bossbar
bossbar remove uhc:read_progress
bossbar remove uhc:safe_x
bossbar remove uhc:safe_z
bossbar remove uhc:danger_x
bossbar remove uhc:danger_z

#clear lobby
execute at @e[tag=main] run fill ~-9 149 ~-9 ~8 155 ~8 air
forceload remove all

#clear room
execute at @e[tag=main] run fill ~-9 123 ~-9 ~8 131 ~8 air

#clear command region
execute at @e[tag=load] run fill ~ ~ ~ ~1 ~-1 ~-2 bedrock

#clear random chest
execute at @e[tag=chest] run setblock ~ ~ ~ air replace

#player reset
effect clear @a
clear @a
xp set @a 0 points
xp set @a 0 levels

#delete entity
kill @e[tag=book]
kill @e[tag=mode]
kill @e[tag=pause]
kill @e[tag=sub3]
kill @e[tag=load]
kill @e[tag=show]
kill @e[tag=sec]
kill @e[tag=min]
kill @e[tag=ref]
kill @e[tag=tp]
kill @e[tag=set]
kill @e[tag=silver]
kill @e[tag=apple]
kill @e[tag=arrow]
kill @e[tag=chest]
kill @e[tag=center]
kill @e[tag=move]
kill @e[tag=weather]
kill @e[tag=gh]
kill @e[tag=lottery]
kill @e[type=item]
kill @e[tag=bee]
kill @e[tag=nether]
kill @e[tag=piglin]
kill @e[tag=exchange]