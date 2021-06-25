#########################################################
# UHC Project 
# Name    : map_tp.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/map_gen
# Loop    : Yes. While reading map. Per 5 ticks. Called by players(execute as).
# func    : Decide how to teleport the player.
#########################################################

#state-1, tp +Z direction. next state tp -X direction
execute if score 00000000-0000-0000-0000-000000000001 read_map_state matches 1 run function uhc:lobby/settings/map_gen/tp_stage/tp_1

#state-2, tp -X direction. next state tp -Z direction
execute if score 00000000-0000-0000-0000-000000000001 read_map_state matches 2 run function uhc:lobby/settings/map_gen/tp_stage/tp_2

#state-3, tp -Z direction. next state tp +X direction
execute if score 00000000-0000-0000-0000-000000000001 read_map_state matches 3 run function uhc:lobby/settings/map_gen/tp_stage/tp_3

#state-4, tp +X direction. next state tp +Z direction
execute if score 00000000-0000-0000-0000-000000000001 read_map_state matches 4 run function uhc:lobby/settings/map_gen/tp_stage/tp_4
