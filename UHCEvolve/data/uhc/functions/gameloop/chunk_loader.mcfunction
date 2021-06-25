###################################################
# UHC Project 
# Name    : chunk_loader.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes, while no one in overworld. 
# func    : Load worldspawn chunk.
###################################################

execute unless entity @e[tag=min] at 00000000-0000-0000-0000-000000000008 run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1},PickupDelay:32767,Age:5900}
execute if entity @e[tag=min,nbt={Age:-200}] at 00000000-0000-0000-0000-000000000008 run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1},PickupDelay:32767,Age:5900}
execute if entity @e[tag=min,nbt={Age:-400}] at 00000000-0000-0000-0000-000000000008 run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1},PickupDelay:32767,Age:5900}
execute if entity @e[tag=min,nbt={Age:-600}] at 00000000-0000-0000-0000-000000000008 run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1},PickupDelay:32767,Age:5900}
execute if entity @e[tag=min,nbt={Age:-800}] at 00000000-0000-0000-0000-000000000008 run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1},PickupDelay:32767,Age:5900}
execute if entity @e[tag=min,nbt={Age:-1000}] at 00000000-0000-0000-0000-000000000008 run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1},PickupDelay:32767,Age:5900}

execute in the_end run kill @e[type=item,nbt={Item:{id:"minecraft:bedrock"},Dimension:1}]