#########################################################
# UHC Project 
# Name    : init.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Lottery start
#########################################################

scoreboard players reset @a lottery
data merge block ~ ~1 ~ {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"請稍候片刻...\"}",Text3:"{\"text\":\"\"}"}
function uhc:lobby/lottery/fast