#########################################################
# UHC Project 
# Name    : br_controller.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event/battle_royale/
# Loop    : No. Called by check_event function.
# func    : Assign tasks to functions by BR_stage.
#########################################################

execute if entity @s[scores={BR_stage=0}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_1
execute if entity @s[scores={BR_stage=1}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_2
execute if entity @s[scores={BR_stage=2}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_3
execute if entity @s[scores={BR_stage=3}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_4
execute if entity @s[scores={BR_stage=4}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_5
execute if entity @s[scores={BR_stage=5}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_6
execute if entity @s[scores={BR_stage=6}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_7
execute if entity @s[scores={BR_stage=7}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_stage_8
execute if entity @s[scores={BR_stage=8}] as 00000000-0000-0000-0000-00000000000c run function uhc:gameloop/event/battle_royale/br_end

scoreboard players add @s BR_stage 1