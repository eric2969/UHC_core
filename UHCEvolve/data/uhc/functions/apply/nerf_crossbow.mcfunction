#########################################################
# UHC Project 
# Name    : nerf_crossbow.mcfunction 
# Made by : jelly99709
# Path    : /apply/
# Loop    : No. Execute as players.
# func    : Give players hold piercing crossbow blindness and slowness
#########################################################

#mainhand
#effect give @a[gamemode=survival,nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:piercing"}]}}}] minecraft:blindness 2 0 true
#effect give @a[gamemode=survival,nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:piercing"}]}}}] minecraft:slowness 2 4 true

#offhand
#effect give @a[gamemode=survival,nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:piercing"}]}}]}] minecraft:blindness 2 0 true
#effect give @a[gamemode=survival,nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:piercing"}]}}]}] minecraft:slowness 2 4 true

effect give @a[gamemode=survival,predicate=uhc:hold_piercing] minecraft:blindness 2 0 true
effect give @a[gamemode=survival,predicate=uhc:hold_piercing] minecraft:slowness 2 4 true