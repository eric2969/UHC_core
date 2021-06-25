#########################################################
# UHC Project 
# Name    : exchange_check.mcfunction 
# Made by : jelly99709 
# Path    : /apply/
# Loop    : No. Executed by and at players
# func    : Summon mine exchange villager
#########################################################


execute align xz run summon villager ~ ~-1 ~.5 {Tags:[exchange],CustomName:"{\"text\":\"礦物交換\"}",CustomNameVisible:1,VillagerData:{profession:mason,level:99,type:snow},PersistenceRequired:1,NoAI:1,Offers:{Recipes:[{buy:{id:coal,Count:8},sell:{id:copper_ingot,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:iron_ingot,Count:1},sell:{id:copper_ingot,Count:2},rewardExp:0b,maxUses:9999999},{buy:{id:redstone,Count:10},sell:{id:copper_ingot,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:emerald,Count:1},sell:{id:copper_ingot,Count:16},rewardExp:0b,maxUses:9999999},{buy:{id:diamond,Count:1},sell:{id:copper_ingot,Count:32},rewardExp:0b,maxUses:9999999},{buy:{id:granite,Count:1},sell:{id:cobblestone,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:andesite,Count:1},sell:{id:cobblestone,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:diorite,Count:1},sell:{id:cobblestone,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:tuff,Count:1},sell:{id:cobblestone,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:cobbled_deepslate,Count:1},sell:{id:cobblestone,Count:1},rewardExp:0b,maxUses:9999999}]}}
execute align xz run summon villager ~1 ~-1 ~.5 {Tags:[exchange],CustomName:"{\"text\":\"礦物交換\"}",CustomNameVisible:1,VillagerData:{profession:mason,level:99,type:desert},PersistenceRequired:1,NoAI:1,Offers:{Recipes:[{buy:{id:copper_ingot,Count:1},sell:{id:coal,Count:8},rewardExp:0b,maxUses:9999999},{buy:{id:copper_ingot,Count:2},sell:{id:iron_ingot,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:copper_ingot,Count:8},sell:{id:gold_ingot,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:copper_ingot,Count:1},sell:{id:redstone,Count:10},rewardExp:0b,maxUses:9999999},{buy:{id:copper_ingot,Count:16},sell:{id:emerald,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:copper_ingot,Count:4},sell:{id:lapis_lazuli,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:copper_ingot,Count:32},sell:{id:diamond,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:diamond,Count:6},sell:{id:netherite_ingot,Count:1},rewardExp:0b,maxUses:9999999}]}}
setblock ~ ~-1 ~ air replace
playsound minecraft:block.copper.break block @s ~ ~ ~
particle minecraft:block copper_block ~ ~-.5 ~ .3 .3 .3 0 65 force

#set cool down (300 sec)
scoreboard players set @s exchange 1500
scoreboard players set @e[tag=exchange,distance=..2] exchange 1500