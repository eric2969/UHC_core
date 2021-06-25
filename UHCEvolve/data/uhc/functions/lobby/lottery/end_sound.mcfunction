#########################################################
# UHC Project 
# Name    : end_sound.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Play lottery end sound
#########################################################

execute at @e[tag=lottery] run data merge block ~ ~1 ~ {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger lottery set 1\"}}",Text2:"{\"text\":\"抽籤機\"}",Text3:"{\"text\":\"\"}"}
execute at @e[tag=lottery] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 0.5
scoreboard players reset @a lottery
scoreboard players enable @a lottery