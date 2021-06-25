#########################################################
# UHC Project 
# Name    : view_settings.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/
# Loop    : No. Execute as players clicking "view settins" sign.
# func    : Show all game settings to players in chat room.
#########################################################

#book0
tellraw @s {"text":"***********************************************************","color":"green","bold":false}
#map size
tellraw @s {"text":"","extra":[{"text":"地圖大小","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"map_size"},"color":"yellow"},{"text":"格","color":"yellow"}]}
#random team number
tellraw @s {"text":"","extra":[{"text":"隨機分隊數量","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"random_team_num"},"color":"yellow"},{"text":"隊","color":"yellow"}]}
#self team permission
execute if score 00000000-0000-0000-0000-000000000001 team_permission matches 1 run tellraw @s {"text":"","extra":[{"text":"自由選隊","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 team_permission matches 0 run tellraw @s {"text":"","extra":[{"text":"自由選隊","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#spectator
execute if score 00000000-0000-0000-0000-000000000001 spec_permission matches 1 run tellraw @s {"text":"","extra":[{"text":"觀察者模式","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 spec_permission matches 0 run tellraw @s {"text":"","extra":[{"text":"觀察者模式","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#slow fall
execute if score 00000000-0000-0000-0000-000000000001 slow_fall matches 1 run tellraw @s {"text":"","extra":[{"text":"開場緩降","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if score 00000000-0000-0000-0000-000000000001 slow_fall matches 0 run tellraw @s {"text":"","extra":[{"text":"開場緩降","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}

#book1
tellraw @s {"text":"-------------------------------","color":"aqua"}
#difficulty
execute if score 00000000-0000-0000-0000-000000000001 diff matches 0 run tellraw @s {"text":"","extra":[{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"和平","color":"light_purple"}]}
execute if score 00000000-0000-0000-0000-000000000001 diff matches 1 run tellraw @s {"text":"","extra":[{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"簡單","color":"light_purple"}]}
execute if score 00000000-0000-0000-0000-000000000001 diff matches 2 run tellraw @s {"text":"","extra":[{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"普通","color":"light_purple"}]}
execute if score 00000000-0000-0000-0000-000000000001 diff matches 3 run tellraw @s {"text":"","extra":[{"text":"遊戲難度","color":"gold"},{"text":" | ","color":"white"},{"text":"困難","color":"light_purple"}]}
#friend fire
execute if score 00000000-0000-0000-0000-000000000001 friend_fire matches 1 run tellraw @s {"text":"","extra":[{"text":"同隊傷害","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 friend_fire matches 0 run tellraw @s {"text":"","extra":[{"text":"同隊傷害","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#friend push
execute if score 00000000-0000-0000-0000-000000000001 friend_push matches 1 run tellraw @s {"text":"","extra":[{"text":"同隊推擠","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 friend_push matches 0 run tellraw @s {"text":"","extra":[{"text":"同隊推擠","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#tab health
execute if score 00000000-0000-0000-0000-000000000001 tab_health matches 1 run tellraw @s {"text":"","extra":[{"text":"tab顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 tab_health matches 0 run tellraw @s {"text":"","extra":[{"text":"tab顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#name health
execute if score 00000000-0000-0000-0000-000000000001 name_health matches 1 run tellraw @s {"text":"","extra":[{"text":"名條顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 name_health matches 0 run tellraw @s {"text":"","extra":[{"text":"名條顯示血量","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#golden head
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 1 if score 00000000-0000-0000-0000-000000000010 gh_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"標準","color":"light_purple"}]}
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 1 if score 00000000-0000-0000-0000-000000000011 gh_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"快速","color":"light_purple"}]}
execute if score 00000000-0000-0000-0000-000000000001 gold_head matches 0 run tellraw @s {"text":"","extra":[{"text":"金頭顱模式","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#night vision
execute if score 00000000-0000-0000-0000-000000000001 night_vision matches 1 run tellraw @s {"text":"","extra":[{"text":"夜視效果","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 night_vision matches 0 run tellraw @s {"text":"","extra":[{"text":"夜視效果","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#advancement announce
execute if score 00000000-0000-0000-0000-000000000001 advance_announce matches 1 run tellraw @s {"text":"","extra":[{"text":"成就通知","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 advance_announce matches 0 run tellraw @s {"text":"","extra":[{"text":"成就通知","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#diamond equipment craft
execute if score 00000000-0000-0000-0000-000000000001 allow_diamond matches 1 run tellraw @s {"text":"","extra":[{"text":"鑽裝合成","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 allow_diamond matches 0 run tellraw @s {"text":"","extra":[{"text":"鑽裝合成","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#diamond equipment craft
execute if score 00000000-0000-0000-0000-000000000001 invisible matches 1 run tellraw @s {"text":"","extra":[{"text":"隱形保護","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 invisible matches 0 run tellraw @s {"text":"","extra":[{"text":"隱形保護","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}

#book2
tellraw @s {"text":"-------------------------------","color":"aqua"}
#nether
execute if score 00000000-0000-0000-0000-000000000001 nether_open matches 1 run tellraw @s {"text":"","extra":[{"text":"開放地獄","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"關閉時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"nether_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 nether_open matches 0 run tellraw @s {"text":"","extra":[{"text":"開放地獄","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#betrayer
execute if score 00000000-0000-0000-0000-000000000001 betray matches 1 run tellraw @s {"text":"","extra":[{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"人數","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"betray_num"},"color":"yellow"},{"text":"人","color":"yellow"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"betray_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"},{"text":" | ","color":"white"},{"text":"公佈時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"betray_tp"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 betray matches 0 run tellraw @s {"text":"","extra":[{"text":"背叛者小隊","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#stew
execute if score 00000000-0000-0000-0000-000000000001 stew_get matches 1 run tellraw @s {"text":"","extra":[{"text":"可疑的燉湯","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 stew_get matches 0 run tellraw @s {"text":"","extra":[{"text":"可疑的燉湯","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#potion
execute if score 00000000-0000-0000-0000-000000000001 potion_brew matches 1 run tellraw @s {"text":"","extra":[{"text":"釀造藥水","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 potion_brew matches 0 run tellraw @s {"text":"","extra":[{"text":"釀造藥水","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#notch apple
execute if score 00000000-0000-0000-0000-000000000001 notch_apple matches 1 run tellraw @s {"text":"","extra":[{"text":"附魔金蘋果","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 notch_apple matches 0 run tellraw @s {"text":"","extra":[{"text":"附魔金蘋果","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#cut clean
execute if score 00000000-0000-0000-0000-000000000001 cut_clean matches 1 run tellraw @s {"text":"","extra":[{"text":"物品免燒","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 cut_clean matches 0 run tellraw @s {"text":"","extra":[{"text":"物品免燒","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#exchange
execute if score 00000000-0000-0000-0000-000000000001 exchange matches 1 run tellraw @s {"text":"","extra":[{"text":"礦物交換","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 exchange matches 0 run tellraw @s {"text":"","extra":[{"text":"礦物交換","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}

#book3
tellraw @s {"text":"-------------------------------","color":"aqua"}
#border mode
execute if score 00000000-0000-0000-0000-000000000001 border_on matches 1 if score 00000000-0000-0000-0000-000000000003 border_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"漸縮","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_start"},"color":"yellow"},{"text":"分鐘","color":"yellow"},{"text":" | ","color":"white"},{"text":"收縮","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_move"},"color":"yellow"},{"text":"分鐘","color":"yellow"},{"text":" | ","color":"white"},{"text":"最終大小","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_end"},"color":"yellow"},{"text":"格","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 border_on matches 1 if score 00000000-0000-0000-0000-000000000004 border_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"競技場","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_start"},"color":"yellow"},{"text":"分鐘","color":"yellow"},{"text":" | ","color":"white"},{"text":"大小","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_end"},"color":"yellow"},{"text":"格","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 border_on matches 1 if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"隨機縮圈","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"border_start"},"color":"yellow"},{"text":"分鐘","color":"yellow"},{"text":" | ","color":"white"},{"text":"冷卻","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"BR_cool_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"},{"text":" | ","color":"white"},{"text":"收縮","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"BR_shrink_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 border_on matches 0 run tellraw @s {"text":"","extra":[{"text":"特殊邊界模式","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#time stop
execute if score 00000000-0000-0000-0000-000000000001 day_stop matches 1 if score 00000000-0000-0000-0000-000000000005 day_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"狀態","color":"gold"},{"text":" | ","color":"white"},{"text":"永晝","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"day_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 day_stop matches 1 if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"狀態","color":"gold"},{"text":" | ","color":"white"},{"text":"永夜","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"day_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 day_stop matches 0 run tellraw @s {"text":"","extra":[{"text":"日夜暫停","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#monster clean
execute if score 00000000-0000-0000-0000-000000000001 monster_clean matches 1 run tellraw @s {"text":"","extra":[{"text":"清除怪物","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"清除時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"monster_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 monster_clean matches 0 run tellraw @s {"text":"","extra":[{"text":"清除怪物","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#hide name
execute if score 00000000-0000-0000-0000-000000000001 hide_name matches 1 run tellraw @s {"text":"","extra":[{"text":"隱藏名條","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"隱藏時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"hide_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 hide_name matches 0 run tellraw @s {"text":"","extra":[{"text":"隱藏名條","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#glowing
execute if score 00000000-0000-0000-0000-000000000001 glowing matches 1 run tellraw @s {"text":"","extra":[{"text":"玩家發光","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"發光時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"glow_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 glowing matches 0 run tellraw @s {"text":"","extra":[{"text":"玩家發光","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}


#book4
tellraw @s {"text":"-------------------------------","color":"aqua"}
#weather fix
execute if score 00000000-0000-0000-0000-000000000001 weather_fix matches 1 if score 00000000-0000-0000-0000-00000000000d weather_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"狀態","color":"gold"},{"text":" | ","color":"white"},{"text":"晴朗","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"weather_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 weather_fix matches 1 if score 00000000-0000-0000-0000-00000000000e weather_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"狀態","color":"gold"},{"text":" | ","color":"white"},{"text":"下雨","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"weather_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 weather_fix matches 1 if score 00000000-0000-0000-0000-00000000000f weather_mode matches 1 run tellraw @s {"text":"","extra":[{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"狀態","color":"gold"},{"text":" | ","color":"white"},{"text":"雷暴","color":"light_purple"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"weather_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 weather_fix matches 0 run tellraw @s {"text":"","extra":[{"text":"天氣恆定","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#sky limit
execute if score 00000000-0000-0000-0000-000000000001 sky_limit matches 1 run tellraw @s {"text":"","extra":[{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"限制","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_height"},"color":"yellow"},{"text":"格","color":"yellow"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"sky_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 sky_limit matches 0 run tellraw @s {"text":"","extra":[{"text":"限制制空","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#ground limit
execute if score 00000000-0000-0000-0000-000000000001 ground_limit matches 1 run tellraw @s {"text":"","extra":[{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"限制","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_height"},"color":"yellow"},{"text":"格","color":"yellow"},{"text":" | ","color":"white"},{"text":"啟動時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"ground_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 ground_limit matches 0 run tellraw @s {"text":"","extra":[{"text":"限制遁地","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#final room
execute if score 00000000-0000-0000-0000-000000000001 room matches 1 run tellraw @s {"text":"","extra":[{"text":"決戰房間","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"傳送時間","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"room_time"},"color":"yellow"},{"text":"分鐘","color":"yellow"}]}
execute unless score 00000000-0000-0000-0000-000000000001 room matches 1 run tellraw @s {"text":"","extra":[{"text":"決戰房間","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}

#book5
tellraw @s {"text":"-------------------------------","color":"aqua"}
#brahcn mine penalty
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 1 run tellraw @s {"text":"","extra":[{"text":"魚骨懲罰","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"branch_limit"},"color":"yellow"},{"text":"石頭","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 0 run tellraw @s {"text":"","extra":[{"text":"魚骨懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 1 if score 00000000-0000-0000-0000-000000000001 branch_position matches 1 run tellraw @s {"text":"","extra":[{"text":"魚骨顯示座標","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 1 if score 00000000-0000-0000-0000-000000000001 branch_position matches 0 run tellraw @s {"text":"","extra":[{"text":"魚骨顯示座標","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 1 if score 00000000-0000-0000-0000-000000000001 branch_bomb matches 1 run tellraw @s {"text":"","extra":[{"text":"魚骨隨機爆炸","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"容許","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"branch_bomb_num"},"color":"yellow"},{"text":"次","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 branch_mine matches 1 if score 00000000-0000-0000-0000-000000000001 branch_bomb matches 0 run tellraw @s {"text":"","extra":[{"text":"魚骨隨機爆炸","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#random silverfish
execute if score 00000000-0000-0000-0000-000000000001 rand_silverfish matches 1 run tellraw @s {"text":"","extra":[{"text":"隨機蠹魚","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 rand_silverfish matches 0 run tellraw @s {"text":"","extra":[{"text":"隨機蠹魚","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#random goledn apple
execute if score 00000000-0000-0000-0000-000000000001 rand_apple matches 1 run tellraw @s {"text":"","extra":[{"text":"隨機金蘋果","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 rand_apple matches 0 run tellraw @s {"text":"","extra":[{"text":"隨機金蘋果","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#reverse craft
#execute if score 00000000-0000-0000-0000-000000000001 reverse_craft matches 1 run tellraw @s {"text":"","extra":[{"text":"逆向合成","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
#execute if score 00000000-0000-0000-0000-000000000001 reverse_craft matches 0 run tellraw @s {"text":"","extra":[{"text":"逆向合成","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#saddle craft
execute if score 00000000-0000-0000-0000-000000000001 saddle matches 1 run tellraw @s {"text":"","extra":[{"text":"人造馬鞍","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 saddle matches 0 run tellraw @s {"text":"","extra":[{"text":"人造馬鞍","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#fish bucket craft
execute if score 00000000-0000-0000-0000-000000000001 fish_bucket matches 1 run tellraw @s {"text":"","extra":[{"text":"魚桶合成","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 fish_bucket matches 0 run tellraw @s {"text":"","extra":[{"text":"魚桶合成","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#nerf arrow
execute if score 00000000-0000-0000-0000-000000000001 nerf_arrow matches 1 run tellraw @s {"text":"","extra":[{"text":"弓弩削弱","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 nerf_arrow matches 0 run tellraw @s {"text":"","extra":[{"text":"弓弩削弱","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#nerf crossbow
execute if score 00000000-0000-0000-0000-000000000001 nerf_crossbow matches 1 run tellraw @s {"text":"","extra":[{"text":"貫穿懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 nerf_crossbow matches 0 run tellraw @s {"text":"","extra":[{"text":"貫穿懲罰","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#random chest
execute if score 00000000-0000-0000-0000-000000000001 random_chest matches 1 run tellraw @s {"text":"","extra":[{"text":"隨機物資箱","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"},{"text":" | ","color":"white"},{"text":"數量","color":"gold"},{"text":" | ","color":"white"},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"chest_num"},"color":"yellow"},{"text":"個","color":"yellow"}]}
execute if score 00000000-0000-0000-0000-000000000001 random_chest matches 0 run tellraw @s {"text":"","extra":[{"text":"隨機物資箱","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#fish rush
execute if score 00000000-0000-0000-0000-000000000001 fish_rush matches 1 run tellraw @s {"text":"","extra":[{"text":"釣魚狂熱","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 fish_rush matches 0 run tellraw @s {"text":"","extra":[{"text":"釣魚狂熱","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#pearl_tear
execute if score 00000000-0000-0000-0000-000000000001 pearl_tear matches 1 run tellraw @s {"text":"","extra":[{"text":"碧藍之淚","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 pearl_tear matches 0 run tellraw @s {"text":"","extra":[{"text":"碧藍之淚","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#shadow-invisible
execute if score 00000000-0000-0000-0000-000000000001 shadow_invisible matches 1 run tellraw @s {"text":"","extra":[{"text":"隱身黑暗","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 shadow_invisible matches 0 run tellraw @s {"text":"","extra":[{"text":"隱身黑暗","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}
#initial supplies
execute if score 00000000-0000-0000-0000-000000000001 init_supply matches 1 run tellraw @s {"text":"","extra":[{"text":"初始物資","color":"gold"},{"text":" | ","color":"white"},{"text":"開啟","color":"green"}]}
execute if score 00000000-0000-0000-0000-000000000001 init_supply matches 0 run tellraw @s {"text":"","extra":[{"text":"初始物資","color":"gold"},{"text":" | ","color":"white"},{"text":"關閉","color":"red"}]}

tellraw @s {"text":"***********************************************************","color":"green","bold":false}

scoreboard players reset @a view_settings
scoreboard players enable @a view_settings
