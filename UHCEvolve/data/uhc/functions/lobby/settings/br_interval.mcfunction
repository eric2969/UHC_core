#########################################################
# UHC Project 
# Name    : BR_interval.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust battle royale mode timing settings.
#########################################################

#cool time
execute if entity @a[scores={book=66}] run scoreboard players remove @s BR_cool_time 1
execute if entity @a[scores={book=66}] run scoreboard players set @s[scores={BR_cool_time=9}] BR_cool_time 5
execute if entity @a[scores={book=66}] run scoreboard players set @s[scores={BR_cool_time=0}] BR_cool_time 10

execute if entity @a[scores={book=67}] run scoreboard players add @s BR_cool_time 1
execute if entity @a[scores={book=67}] run scoreboard players set @s[scores={BR_cool_time=6}] BR_cool_time 10
execute if entity @a[scores={book=67}] run scoreboard players set @s[scores={BR_cool_time=11}] BR_cool_time 1

#shrink time
execute if entity @a[scores={book=68}] run scoreboard players remove @s BR_shrink_time 1
execute if entity @a[scores={book=68}] run scoreboard players set @s[scores={BR_shrink_time=3}] BR_shrink_time 2
execute if entity @a[scores={book=68}] run scoreboard players set @s[scores={BR_shrink_time=0}] BR_shrink_time 5

execute if entity @a[scores={book=69}] run scoreboard players add @s BR_shrink_time 1
execute if entity @a[scores={book=69}] run scoreboard players set @s[scores={BR_shrink_time=3}] BR_shrink_time 4
execute if entity @a[scores={book=69}] run scoreboard players set @s[scores={BR_shrink_time=6}] BR_shrink_time 1

execute if entity @a[scores={book=66..67}] if score @s border_on matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機縮圈冷卻時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"BR_cool_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if entity @a[scores={book=68..69}] if score @s border_on matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"隨機縮圈收縮時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"BR_shrink_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}