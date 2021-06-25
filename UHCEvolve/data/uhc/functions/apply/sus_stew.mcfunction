#########################################################
# UHC Project 
# Name    : sus_stew.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : No. Execute as players.
# func    : Clear notch apple
#########################################################

clear @s suspicious_stew
tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"系統回收可疑的燉湯","color":"white"}]}
execute at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 2