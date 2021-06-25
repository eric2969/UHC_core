#########################################################
# UHC Project 
# Name    : weather.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust weather settings.
#########################################################

execute if entity @a[scores={book=95}] run scoreboard players add @e[tag=book] weather_fix 1
execute if entity @a[scores={book=96}] run scoreboard players remove @e[tag=weather] weather_mode 1
execute if entity @a[scores={book=97}] run scoreboard players add @e[tag=weather] weather_mode 1
execute if entity @a[scores={book=98}] run scoreboard players remove @s weather_time 10
execute if entity @a[scores={book=99}] run scoreboard players add @s weather_time 10

scoreboard players set @e[tag=book,scores={weather_fix=2}] weather_fix 0
scoreboard players set @e[tag=weather,scores={weather_mode=3}] weather_mode 0
scoreboard players set @e[tag=weather,scores={weather_mode=-1}] weather_mode 2
scoreboard players set @s[scores={weather_time=101..}] weather_time 0
scoreboard players set @s[scores={weather_time=..-1}] weather_time 100

execute if entity @a[scores={book=95}] if score @s weather_fix matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=95}] if score @s weather_fix matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=96..97}] if score @s weather_fix matches 1 if score 00000000-0000-0000-0000-00000000000d weather_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"晴朗","color":"light_purple"}]}
execute if entity @a[scores={book=96..97}] if score @s weather_fix matches 1 if score 00000000-0000-0000-0000-00000000000e weather_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"下雨","color":"light_purple"}]}
execute if entity @a[scores={book=96..97}] if score @s weather_fix matches 1 if score 00000000-0000-0000-0000-00000000000f weather_mode matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"雷暴","color":"light_purple"}]}
execute if entity @a[scores={book=98..99}] if score @s weather_fix matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"weather_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}