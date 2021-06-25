#########################################################
# UHC Project 
# Name    : time_stop.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust daylight stop settings.
#########################################################

execute if entity @a[scores={book=52}] run scoreboard players add @e[tag=book] day_stop 1
execute if entity @a[scores={book=53}] run scoreboard players remove @e[tag=pause] day_mode 1
execute if entity @a[scores={book=54}] run scoreboard players add @e[tag=pause] day_mode 1
execute if entity @a[scores={book=55}] run scoreboard players remove @s day_time 20
execute if entity @a[scores={book=56}] run scoreboard players add @s day_time 20

scoreboard players set @e[tag=book,scores={day_stop=2..}] day_stop 0
scoreboard players set @e[tag=pause,scores={day_mode=2..}] day_mode 0
scoreboard players set @e[tag=pause,scores={day_mode=..-1}] day_mode 1
scoreboard players set @s[scores={day_time=101..}] day_time 0
scoreboard players set @s[scores={day_time=..-1}] day_time 100

execute if entity @a[scores={book=52}] if score @s day_stop matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=52}] if score @s day_stop matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=53..54}] if score @s day_stop matches 1 if score 00000000-0000-0000-0000-000000000005 day_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"永晝","color":"light_purple"}]}
execute if entity @a[scores={book=53..54}] if score @s day_stop matches 1 if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"永夜","color":"light_purple"}]}
execute if entity @a[scores={book=55..56}] if score @s day_stop matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"day_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}