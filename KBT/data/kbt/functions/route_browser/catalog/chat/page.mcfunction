scoreboard players enable @s kbt.rb_pick
scoreboard players enable @s kbt.rb_page
scoreboard players set #rb_chat_size kbt.settings 10
scoreboard players operation #rb_chat_pages kbt.settings = #rb_count kbt.settings
scoreboard players add #rb_chat_pages kbt.settings 9
scoreboard players operation #rb_chat_pages kbt.settings /= #rb_chat_size kbt.settings
execute if score #rb_chat_pages kbt.settings matches 0 run scoreboard players set #rb_chat_pages kbt.settings 1
execute unless score #rb_chat_page kbt.settings matches 1.. run scoreboard players set #rb_chat_page kbt.settings 1
execute if score #rb_chat_page kbt.settings > #rb_chat_pages kbt.settings run scoreboard players operation #rb_chat_page kbt.settings = #rb_chat_pages kbt.settings
data modify storage kbt:route_browser chat_queue set from storage kbt:route_browser all_matches
data modify storage kbt:route_browser chat_choices set value []
scoreboard players operation #rb_chat_skip kbt.settings = #rb_chat_page kbt.settings
scoreboard players remove #rb_chat_skip kbt.settings 1
scoreboard players operation #rb_chat_skip kbt.settings *= #rb_chat_size kbt.settings
execute if score #rb_chat_skip kbt.settings matches 1.. if data storage kbt:route_browser chat_queue[0] run function kbt:route_browser/catalog/chat/skip
function kbt:route_browser/catalog/chat/header
scoreboard players set #rb_chat_budget kbt.settings 10
execute if data storage kbt:route_browser chat_queue[0] run function kbt:route_browser/catalog/chat/row
execute unless score #rb_count kbt.settings matches 1.. run tellraw @s {"text":"No routes match these filters","color":"dark_red"}
tellraw @s [{"text":"","color":"yellow","bold":true},{"text":"[←] ","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/trigger kbt.rb_page set 1"}},{"text":"Page "},{"score":{"name":"#rb_chat_page","objective":"kbt.settings"}},{"text":" / "},{"score":{"name":"#rb_chat_pages","objective":"kbt.settings"}},{"text":" [→]","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/trigger kbt.rb_page set 2"}}]
tellraw @s {"text":"Click ☆/★ to toggle a favorite Click a route name to select it, then use Start in the lobby","color":"gray"}
