###################################################
# UHC Project 
# Name    : pre_install.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No. Called by #load tag.
# func    : Install hint. 
###################################################

tellraw @a {"text":"UHCE >>> ","color":"gray","extra":[{"text":"UHC: Evolve","color":"gold"},{"text":" 資料包載入完成","color":"white"}]}
execute unless entity 00000000-0000-0000-0000-000000000001 run tellraw @a {"text":"UHCE >>> ","color":"gray","extra":[{"text":"選定中心點後， 請輸入 ","color":"white"},{"text":"/function uhc:start","color":"aqua"},{"text":" 或 ","color":"white"},{"text":"點擊此處","color":"light_purple","hoverEvent":{"action":"show_text","value":"點此建立遊戲大廳"},"clickEvent":{"action":"run_command","value":"/function uhc:start"}},{"text":" 建立遊戲大廳","color":"white"}]}
