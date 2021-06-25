#########################################################
# UHC Project 
# Name    : friend.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust friend_fire, friend_push and friend_pos.
#########################################################

execute if entity @a[scores={book=18}] run scoreboard players add @e[tag=book] friend_fire 1
execute if entity @a[scores={book=19}] run scoreboard players add @e[tag=book] friend_push 1
#execute if entity @a[scores={book=20}] run scoreboard players add @e[tag=book] friend_pos 1

scoreboard players set @e[tag=book,scores={friend_fire=2..}] friend_fire 0
scoreboard players set @e[tag=book,scores={friend_push=2..}] friend_push 0
#scoreboard players set @e[tag=book,scores={friend_pos=2..}] friend_pos 0

execute if entity @a[scores={book=18}] if score @s friend_fire matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"同隊傷害","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=18}] if score @s friend_fire matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"同隊傷害","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @a[scores={book=19}] if score @s friend_push matches 1 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"同隊推擠","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if entity @a[scores={book=19}] if score @s friend_push matches 0 run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"同隊推擠","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
