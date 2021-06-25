#########################################################
# UHC Project 
# Name    : branch_bomb.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : No. Execute by players.
# func    : Branch-mined bomb effect.
#########################################################

summon firework_rocket ~ ~ ~ {LifeTime:2,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;4408131],FadeColors:[I;4408131]},{Type:1,Flicker:0,Trail:0,Colors:[I;4408131],FadeColors:[I;4408131]}]}}}}
kill @s