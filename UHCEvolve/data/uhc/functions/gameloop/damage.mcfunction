###################################################
# UHC Project 
# Name    : damage.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. While someone hurt. Execute as hurt player.
# func    : Damage Notifier.
###################################################

scoreboard players operation @s warn /= const10 X
tellraw @a[gamemode=spectator] {"text":"UHCE >>> ","color":"gray","bold":false,"extra":[{"selector":"@s"},{"text":" 受到 ","color":"white"},{"score":{"name":"@s","objective":"warn"},"color":"gold"},{"text":" 點傷害!!","color":"white"}]}
execute unless entity @s[team=solo] run teammsg 正在受傷!!!
scoreboard players set @s warn 0