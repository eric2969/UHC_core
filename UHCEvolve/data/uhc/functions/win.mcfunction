###################################################
# UHC Project 
# Name    : win.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No.
# func    : Show win message.
###################################################

#mark game stage
tag @e[tag=main] add win

#tag winner team
execute if entity @e[tag=ref,tag=solo] run tag @a[team=solo,gamemode=survival] add win
execute if entity @e[tag=ref,tag=r] run tag @a[team=red] add win
execute if entity @e[tag=ref,tag=b] run tag @a[team=blue] add win
execute if entity @e[tag=ref,tag=gr] run tag @a[team=green] add win
execute if entity @e[tag=ref,tag=y] run tag @a[team=yellow] add win
execute if entity @e[tag=ref,tag=pr] run tag @a[team=purple] add win
execute if entity @e[tag=ref,tag=gy] run tag @a[team=gray] add win
execute if entity @e[tag=ref,tag=rd] run tag @a[team=red_dark] add win
execute if entity @e[tag=ref,tag=bd] run tag @a[team=blue_dark] add win
execute if entity @e[tag=ref,tag=grd] run tag @a[team=green_dark] add win
execute if entity @e[tag=ref,tag=yd] run tag @a[team=gold] add win
execute if entity @e[tag=ref,tag=pk] run tag @a[team=pink] add win
execute if entity @e[tag=ref,tag=gyd] run tag @a[team=gray_dark] add win
execute if entity @e[tag=ref,tag=aq] run tag @a[team=aqua] add win
execute if entity @e[tag=ref,tag=aqd] run tag @a[team=aqua_dark] add win
execute if entity @e[tag=ref,tag=bty] run tag @a[team=betrayer] add win

#winner suffix
team join winner @a[tag=win,team=solo]
team modify winner suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=red] run team modify red suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=blue] run team modify blue suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=green] run team modify green suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=yellow] run team modify yellow suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=purple] run team modify purple suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=gray] run team modify gray suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=red_dark] run team modify red_dark suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=blue_dark] run team modify blue_dark suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=green_dark] run team modify green_dark suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=gold] run team modify gold suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=pink] run team modify pink suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=gray_dark] run team modify gray_dark suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=aqua] run team modify aqua suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=aqua_dark] run team modify aqua_dark suffix {"text":" [勝利者]"}
execute if entity @a[tag=win,team=betrayer] run team modify betrayer suffix {"text":" [勝利者]"}

#stats
execute as @a run scoreboard players operation @s final_kill = @s temp_kill
execute as @a run scoreboard players operation @s final_stone = @s temp_stone
execute as @a run scoreboard players operation @s final_diamond = @s temp_diamond
execute as @a run scoreboard players operation @s final_gold = @s temp_gold
#execute as @a run scoreboard players operation @s final_stone += @s temp_stone_d
execute as @a run scoreboard players operation @s final_diamond += @s temp_diamond_d
execute as @a run scoreboard players operation @s final_gold += @s temp_gold_d
execute as @a run scoreboard players operation @s final_apple = @s temp_apple
#execute as @a run scoreboard players operation @s final_hit = @s temp_hit
#execute as @a run scoreboard players operation @s final_hit_m = @s temp_hit_m
execute as @a run scoreboard players operation @s final_hurt = @s temp_hurt
execute as @a run scoreboard players operation @s final_hurt += @s temp_absorb

scoreboard players operation 擊殺戰神 temp_kill > @a final_kill
scoreboard players operation 魚骨小子 temp_stone > @a final_stone
scoreboard players operation 大富豪家 temp_diamond > @a final_diamond
scoreboard players operation 淘金達人 temp_gold > @a final_gold
scoreboard players operation 嗑金玩家 temp_apple > @a final_apple
#scoreboard players operation 噬血狂魔 temp_hit > @a final_hit
scoreboard players operation 超級坦克 temp_hurt > @a final_hurt
#scoreboard players operation 魔物獵人 temp_hit_m > @a final_hit_m

execute as @a if score @s final_kill = 擊殺戰神 temp_kill run tag @s add f_kill
execute as @a if score @s final_stone = 魚骨小子 temp_stone run tag @s add f_stone
execute as @a if score @s final_diamond = 大富豪家 temp_diamond run tag @s add f_diamond
execute as @a if score @s final_gold = 淘金達人 temp_gold run tag @s add f_gold
execute as @a if score @s final_apple = 嗑金玩家 temp_apple run tag @s add f_apple
#execute as @a if score @s final_hit = 噬血狂魔 temp_hit run tag @s add f_hit
execute as @a if score @s final_hurt = 超級坦克 temp_hurt run tag @s add f_hurt
#execute as @a if score @s final_hit_m = 魔物獵人 temp_hit_m run tag @s add f_hitm

#scoreboard players operation @a final_hit /= const10 X
#scoreboard players operation @a final_hit_m /= const10 X
scoreboard players operation @a final_hurt /= const10 X

#message
execute as @a run tellraw @s {"text":"","extra":[{"text":"\n----------------------------------------------------------------\n\n","color":"green","bold":true},{"text":"                         UHC: ","color":"red","bold":true},{"text":"Evolve\n\n","color":"gold","bold":true,"italic":true},{"text":"獲勝者: ","color":"aqua","bold":true},{"selector":"@a[tag=win]"},{"text":"\n"},{"text":"個人擊殺數/承受傷害: ","color":"white","bold":true},{"score":{"name":"@s","objective":"final_kill"}},{"text":"/"},{"score":{"name":"@s","objective":"final_hurt"}},{"text":"\n\n[擊殺戰神] ","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"擊殺最多玩家"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar final_kill"}},{"selector":"@a[tag=f_kill]"},{"text":"\n[超級坦克] ","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":"受到最多傷害"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar final_hurt"}},{"selector":"@a[tag=f_hurt]"},{"text":"\n[大富豪家] ","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":"挖掘最多鑽石"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar final_diamond"}},{"selector":"@a[tag=f_diamond]"},{"text":"\n[淘金達人] ","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":"挖掘最多黃金"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar final_gold"}},{"selector":"@a[tag=f_gold]"},{"text":"\n[嗑金玩家] ","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":"使用最多金蘋果(1金頭顱=2金蘋果)"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar final_apple"}},{"selector":"@a[tag=f_apple]"},{"text":"\n[魚骨小子] ","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":"挖掘最多石頭"},"clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar final_stone"}},{"selector":"@a[tag=f_stone]"},{"text":"\n\nUHC: Evolve感謝您的遊玩!!\n\n","color":"yellow","bold":true},{"text":"----------------------------------------------------------------\n\n","color":"green","bold":true}]}

#firework
execute at @a run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~