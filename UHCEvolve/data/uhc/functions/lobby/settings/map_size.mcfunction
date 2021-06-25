#########################################################
# UHC Project 
# Name    : map_size.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust map_size.
#########################################################

# -256 or +256
execute if entity @a[scores={book=6}] run scoreboard players remove @s map_size 256
execute if entity @a[scores={book=7}] run scoreboard players add @s map_size 256

#make map_size be 496 752 1008 1264 1520
scoreboard players set @s[scores={map_size=1600..}] map_size 496
scoreboard players set @s[scores={map_size=..400}] map_size 1520

#worldborder
execute if entity @s[scores={map_size=496}] run worldborder set 496
execute if entity @s[scores={map_size=752}] run worldborder set 752
execute if entity @s[scores={map_size=1008}] run worldborder set 1008
execute if entity @s[scores={map_size=1264}] run worldborder set 1264
execute if entity @s[scores={map_size=1520}] run worldborder set 1520

#width_chunk number
execute if entity @s[scores={map_size=496}] run scoreboard players set @s width_chunk 15
execute if entity @s[scores={mapsize=496}] run scoreboard players set @s inv_width_chunk -15
execute if entity @s[scores={map_size=752}] run scoreboard players set @s width_chunk 31
execute if entity @s[scores={mapsize=752}] run scoreboard players set @s inv_width_chunk -31
execute if entity @s[scores={map_size=1008}] run scoreboard players set @s width_chunk 47
execute if entity @s[scores={mapsize=1008}] run scoreboard players set @s inv_width_chunk -47
execute if entity @s[scores={map_size=1264}] run scoreboard players set @s width_chunk 63
execute if entity @s[scores={mapsize=1264}] run scoreboard players set @s inv_width_chunk -63
execute if entity @s[scores={map_size=1520}] run scoreboard players set @s width_chunk 79
execute if entity @s[scores={mapsize=1520}] run scoreboard players set @s inv_width_chunk -79

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"設定","color":"aqua"},{"text":" | ","color":"white"},{"text":"地圖大小","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"map_size"},"color":"yellow"},{"text":"格","color":"yellow"}]}