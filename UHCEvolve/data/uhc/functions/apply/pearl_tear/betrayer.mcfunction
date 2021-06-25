#########################################################
# UHC Project 
# Name    : betrayer.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/pearl_tear/
# Loop    : No. Execute as betrayers.
# func    : Give betrayers pearl_tear recipe
#########################################################

recipe give @a[tag=betrayer] uhc:pearl_tear
tag @a[tag=betrayer] remove pearl_craft
tag @a[tag=betrayer] remove pearl_used