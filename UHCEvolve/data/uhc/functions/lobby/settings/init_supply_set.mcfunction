#########################################################
# UHC Project 
# Name    : init_supply_set.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Set initial supplies by modifying the shulker box.
#########################################################

#start setting
execute if entity @a[scores={book=1032}] if entity @s[scores={init_supply=1}] at @s run tp @a[scores={book=1032}] ~3.5 ~ ~6 ~ ~
execute if entity @a[scores={book=1032}] if entity @s[scores={init_supply=1}] run tellraw @a[gamemode=creative] {"text":"","extra":[{"text":"\nUHCE >>> ","color":"gray"},{"text":"初始物資於界伏盒內設置完成後，請","color":"white"},{"text":"點此儲存","color":"aqua","hoverEvent":{"action":"show_text","value":"點此儲存初始物資設置"},"clickEvent":{"action":"run_command","value":"/trigger book set 1033"}},{"text":"或","color":"white"},{"text":"取消","color":"red","hoverEvent":{"action":"show_text","value":"點此取消本次變更"},"clickEvent":{"action":"run_command","value":"/trigger book set 1034"}}]}
execute if entity @a[scores={book=1032}] if entity @s[scores={init_supply=1}] run setblock ~4 ~1 ~7 minecraft:birch_wall_sign[facing=north]{GlowingText:1b,Color:"green",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"儲存設定","bold":true}',Text1:'{"clickEvent":{"action":"run_command","value":"trigger book set 1033"},"text":""}'}
execute if entity @a[scores={book=1032}] if entity @s[scores={init_supply=1}] run setblock ~2 ~1 ~7 minecraft:birch_wall_sign[facing=north]{GlowingText:1b,Color:"red",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"取消變更","bold":true}',Text1:'{"clickEvent":{"action":"run_command","value":"trigger book set 1034"},"text":""}'}
execute if entity @a[scores={book=1032}] if entity @s[scores={init_supply=1}] run tag @a[scores={book=1032}] add set_supply

#save settings
execute if entity @a[scores={book=1033}] if entity @s[scores={init_supply=1}] at @s if data block ~3 ~ ~7 Items run data modify block ~ 2 ~ Items set from block ~3 ~ ~7 Items
execute if entity @a[scores={book=1033}] if entity @s[scores={init_supply=1}] at @s unless data block ~3 ~ ~7 Items run data remove block ~ 2 ~ Items
execute if entity @a[scores={book=1033}] if entity @s[scores={init_supply=1}] run tellraw @a[gamemode=creative] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定已儲存","color":"green"}]}

#cancel
execute if entity @a[scores={book=1034}] run tellraw @a[gamemode=creative] {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"已取消變更","color":"red"}]}

#end settings
execute if entity @a[scores={book=1033..1034}] run tag @a remove set_supply
execute if entity @a[scores={book=1033..1034}] run setblock ~4 ~1 ~7 air replace
execute if entity @a[scores={book=1033..1034}] run setblock ~2 ~1 ~7 air replace