#########################################################
# UHC Project 
# Name    : notch_apple.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : No. EXecute as players.
# func    : Clear notch apple
#########################################################

clear @s enchanted_golden_apple
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:apple",Count:1},PickupDelay:0,Invulnerable:1}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_block",Count:8},PickupDelay:0,Invulnerable:1}
tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"系統回收附魔金蘋果","color":"white"}]}
execute at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 2