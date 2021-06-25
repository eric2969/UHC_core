###################################################
# UHC Project 
# Name    : game4.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism 4.
###################################################

#win judge
execute if score 剩餘隊伍 information matches 1 unless entity @a[tag=win] run function uhc:win

#spec permission
execute if score @s spec_permission matches 0 run effect give @a[gamemode=spectator] blindness 10 0 true

#information
execute store result score 邊界大小 information run worldborder get

#glow
execute if score @s glowing matches 2 run effect give @a glowing 999999 0 true

#nerf arrow
execute if score @s nerf_arrow matches 1 as @e[type=#uhc:arrow,tag=!arrow] run function uhc:apply/nerf_arrow

#battle royale hint
execute if score @s BR_stage matches 1..8 run function uhc:gameloop/event/battle_royale/self_check_2

#shawdow-invisible
execute if score @s shadow_invisible matches 1 run function uhc:apply/shadow_invisible

#timer
execute at @s unless entity @e[tag=min] run function uhc:gameloop/check_event

#chunk loader
#execute unless entity @a[gamemode=!spectator,nbt={Dimension:0}] run function uhc:gameloop/chunk_loader

#fish bucket craft correction
execute as @a[scores={tropicalfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/tropicalfish