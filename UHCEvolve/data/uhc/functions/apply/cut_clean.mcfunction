###################################################
# UHC Project 
# Name    : cut_clean.mcfunction 
# Made by : jelly99709 
# Path    : Yes, while cut-clean was opened.
# func    : To cook food, to smelt ores.
###################################################

#cook all things
execute as @e[type=item,nbt={Item:{id:"minecraft:porkchop"}}] run data merge entity @s {Item:{id:"minecraft:cooked_porkchop"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:cod"}}] run data merge entity @s {Item:{id:"minecraft:cooked_cod"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:salmon"}}] run data merge entity @s {Item:{id:"minecraft:cooked_salmon"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp"}}] run data merge entity @s {Item:{id:"minecraft:dried_kelp"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:beef"}}] run data merge entity @s {Item:{id:"minecraft:cooked_beef"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:chicken"}}] run data merge entity @s {Item:{id:"minecraft:cooked_chicken"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:potato"}}] run data merge entity @s {Item:{id:"minecraft:baked_potato"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:rabbit"}}] run data merge entity @s {Item:{id:"minecraft:cooked_rabbit"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:mutton"}}] run data merge entity @s {Item:{id:"minecraft:cooked_mutton"},Tags:[cook]}
#execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ore"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"},Tags:[cook]}
#execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ore"}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] run data merge entity @s {Item:{id:"minecraft:copper_ingot"},Tags:[cook]}
execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] run data merge entity @s {Item:{id:"minecraft:netherite_scrap"},Tags:[cook]}

#give experience
execute at @e[tag=cook] run summon experience_orb ~ ~ ~ {Value:1s}

#remove tags
tag @e[tag=cook] remove cook