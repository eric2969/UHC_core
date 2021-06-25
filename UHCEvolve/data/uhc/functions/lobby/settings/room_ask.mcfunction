#########################################################
# UHC Project 
# Name    : room_ask.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Show room option notifier.
#########################################################

execute if entity @s[scores={room=0}] run tellraw @a[gamemode=creative] {"text":"","extra":[{"text":"\nUHCE >>> ","color":"gray"},{"text":"決戰房間生成位置準備完成，請","color":"white"},{"text":"點此確認","color":"aqua","hoverEvent":{"action":"show_text","value":"點此生成決戰房間"},"clickEvent":{"action":"run_command","value":"/trigger book set 89"}},{"text":"或","color":"white"},{"text":"取消","color":"red","hoverEvent":{"action":"show_text","value":"點此取消決戰房間設定"},"clickEvent":{"action":"run_command","value":"/trigger book set 81"}}]}
execute at @e[tag=assist,scores={room=1}] run setblock ~ 125 ~ structure_block{mode:"LOAD",name:"uhc:room",powered:0,posX:-9,posY:-1,posZ:-9,sizeX:18,sizeY:8,sizeZ:18,ignoreEntities:0,showboundingbox:1} replace
execute at @e[tag=assist,scores={room=0}] run fill ~-9 124 ~-9 ~8 131 ~8 air replace
execute if entity @e[tag=assist,scores={room=0}] run kill @e[tag=tp]
execute if entity @e[tag=assist,scores={room=0}] run tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"決戰房間","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if entity @s[scores={room=-1}] run setblock ~ 125 ~ air replace

#will turn into 0 after line 21
execute if entity @s[scores={room=-1}] run scoreboard players set @s room 1

execute if entity @s[scores={room=0}] run scoreboard players set @s room -1
#execute if entity @s[scores={room=0}] scoreboard players set @e[tag=assist] room 1

execute if entity @s[scores={room=1}] run scoreboard players set @e[tag=assist] room 1
execute if entity @s[scores={room=1}] run scoreboard players set @s room 0
