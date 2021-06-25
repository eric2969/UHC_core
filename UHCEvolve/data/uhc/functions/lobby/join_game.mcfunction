#########################################################
# UHC Project 
# Name    : join_game.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/
# Loop    : Yes. Execute as players.
# func    : Initialize players that join game first time.
#########################################################

clear @s
gamemode adventure @s
#xp add @s -999999
tp @s 00000000-0000-0000-0000-000000000001
effect clear @s
effect give @s blindness 5 0 true
effect give @s absorption 1 0 true
title @s title {"text":"UHC: ","color":"red","extra":[{"text":"Evolve","color":"gold","italic":true}]}
title @s subtitle {"text":"Designed by ","extra":[{"text":"Jelly","color":"dark_purple"}]}
tellraw @s {"text":"\nUHCE >>> ","color":"gray","extra":[{"text":"歡迎您遊玩 ","color":"green"},{"text":"UHC: Evolve","color":"gold"}]}
tellraw @s {"text":"UHCE >>> ","color":"gray","extra":[{"text":"若有任何建議或bug請","color":"white"},{"text":"點此回報","color":"aqua","hoverEvent":{"action":"show_text","value":"點此進入地圖網站"},"clickEvent":{"action":"open_url","value":"https://forum.gamer.com.tw/C.php?bsn=18673&snA=168664"}}]}
tellraw @s {"text":"UHCE >>> ","color":"gray","extra":[{"text":"調整遊戲設定請","color":"white"},{"text":"成為創造者模式","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"點我成為創造者模式"},"clickEvent":{"action":"run_command","value":"/gamemode creative"}}]}
execute at 00000000-0000-0000-0000-000000000002 run spawnpoint @s ~ 150 ~
team join solo @s
tag @s add player
tag @s add gold_head_normal
recipe give @s *
scoreboard players enable @s lottery
scoreboard players enable @s view_settings