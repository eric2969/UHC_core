#########################################################
# UHC Project 
# Name    : health.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust tab_health & name_health.
#########################################################

execute if entity @a[scores={book=21}] run scoreboard players add @e[tag=book] tab_health 1
execute if entity @a[scores={book=22}] run scoreboard players add @e[tag=book] name_health 1

scoreboard players set @e[tag=book,scores={tab_health=2..}] tab_health 0
scoreboard players set @e[tag=book,scores={name_health=2..}] name_health 0

execute if entity @a[scores={book=21}] if score @s tab_health matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"tab顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=21}] if score @s tab_health matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"tab顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=22}] if score @s name_health matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"名條顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=22}] if score @s name_health matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"名條顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
