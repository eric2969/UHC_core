#########################################################
# UHC Project 
# Name    : position.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/betray
# Loop    : No. Execute as betrayers.
# func    : Show cooridnates.
#########################################################

execute if entity @s[team=red] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=red,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=blue] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=blue,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=green] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=green,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=yellow] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=yellow,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=purple] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=purple,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=gray] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=gray,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=red_dark] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=red_dark,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=blue_dark] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=blue_dark,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=green_dark] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=green_dark,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=gold] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=gold,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=pink] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=pink,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=gray_dark] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=gray_dark,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=aqua] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=aqua,tag=!betrayer]","color":"aqua"}]}
execute if entity @s[team=aqua_dark] run tellraw @s {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"text":"某位成員的位置: "},{"nbt":"Pos","entity":"@r[team=aqua_dark,tag=!betrayer]","color":"aqua"}]}