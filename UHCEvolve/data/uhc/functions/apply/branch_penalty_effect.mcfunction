#########################################################
# UHC Project 
# Name    : branch_penalty.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : No. Execute by players.
# func    : Branch-mined penalty effect.
#########################################################

effect give @s glowing 30 0 true
effect give @s weakness 30 1 true
effect give @s slowness 30 3 true
effect give @s mining_fatigue 30 1 true
clear @s #uhc:pickaxe
scoreboard players add @s branch_bomb_num 1

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":" 受到魚骨懲罰","color":"white"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_position matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":" 目前座標: ","color":"white"},{"nbt":"Pos[0]","entity":"@s","color":"aqua"},{"text":" "},{"nbt":"Pos[1]","entity":"@s","color":"aqua"},{"text":" "},{"nbt":"Pos[2]","entity":"@s","color":"aqua"},{"text":" "}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_bomb matches 1 if score @s branch_bomb_num = 00000000-0000-0000-0000-000000000001 branch_bomb_num run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":" 魚骨懲罰次數達到","color":"white"},{"text":"爆炸標準","color":"red"},{"text":" | 即刻起挖掘石頭將有","color":"white"},{"text":"1%","color":"yellow"},{"text":"機率爆炸","color":"white"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_bomb matches 1 if score @s branch_bomb_num = 00000000-0000-0000-0000-000000000001 branch_bomb_num run tag @s add mine_bomb
execute as @a at @s run playsound minecraft:block.anvil.land ambient @s ~ ~ ~

#scoreboard players set @s stone_penalty 0
scoreboard players operation @s stone_penalty -= const100 C