#########################################################
# UHC Project 
# Name    : betray.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust betrayer settings.
#########################################################

#########################################################
# UHC Project 
# Name    : border_mode.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust border_mode settings.
#########################################################

execute if entity @a[scores={book=106}] run scoreboard players add @e[tag=book] betray 1
execute if entity @a[scores={book=107}] run scoreboard players remove @s betray_num 1
execute if entity @a[scores={book=108}] run scoreboard players add @s betray_num 1
execute if entity @a[scores={book=109}] run scoreboard players remove @s betray_time 5
execute if entity @a[scores={book=110}] run scoreboard players add @s betray_time 5
execute if entity @a[scores={book=111}] run scoreboard players remove @s betray_tp 20
execute if entity @a[scores={book=112}] run scoreboard players add @s betray_tp 20

scoreboard players set @e[tag=book,scores={betray=2..}] betray 0
scoreboard players set @s[scores={betray_num=5..}] betray_num 1
scoreboard players set @s[scores={betray_num=..0}] betray_num 4
scoreboard players set @s[scores={betray_time=76..}] betray_time 5
scoreboard players set @s[scores={betray_time=..4}] betray_time 75
scoreboard players set @s[scores={betray_tp=81..}] betray_tp 20
scoreboard players set @s[scores={betray_tp=..19}] betray_tp 80

execute if entity @a[scores={book=106}] if score @s betray matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=106}] if score @s betray matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=107..108}] if score @s betray matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"背叛人數","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"betray_num"},"color":"yellow"},{"text":"人","color":"yellow"}]}
execute if entity @a[scores={book=109..110}] if score @s betray matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"背叛啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"betray_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if entity @a[scores={book=111..112}] if score @s betray matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"背叛公佈時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"betray_tp"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}


