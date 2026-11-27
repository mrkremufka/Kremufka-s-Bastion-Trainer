function kbt:routes/creator/catalog/list_prepare
scoreboard players set #rc_list_size kbt.settings 10
scoreboard players set #rc_list_total kbt.settings 0
execute store result score #rc_list_total kbt.settings run data get storage kbt:route_runtime list_records
scoreboard players operation #rc_list_pages kbt.settings = #rc_list_total kbt.settings
scoreboard players add #rc_list_pages kbt.settings 9
scoreboard players operation #rc_list_pages kbt.settings /= #rc_list_size kbt.settings
execute if score #rc_list_pages kbt.settings matches 0 run scoreboard players set #rc_list_pages kbt.settings 1
execute unless score #rc_list_page kbt.settings matches 1.. run scoreboard players set #rc_list_page kbt.settings 1
execute if score #rc_list_page kbt.settings > #rc_list_pages kbt.settings run scoreboard players operation #rc_list_page kbt.settings = #rc_list_pages kbt.settings
data modify storage kbt:route_runtime list_queue set from storage kbt:route_runtime list_records
scoreboard players operation #rc_list_skip kbt.settings = #rc_list_page kbt.settings
scoreboard players remove #rc_list_skip kbt.settings 1
scoreboard players operation #rc_list_skip kbt.settings *= #rc_list_size kbt.settings
execute if score #rc_list_skip kbt.settings matches 1.. if data storage kbt:route_runtime list_queue[0] run function kbt:routes/creator/catalog/list_skip
scoreboard players enable @s kbt.rc_menu
scoreboard players enable @s kbt.rc_pick
data modify storage kbt:route_runtime list_choices set value []
scoreboard players enable @s kbt.rc_open
scoreboard players enable @s kbt.rc_delete
scoreboard players enable @s kbt.rc_tab
execute if score #rc_list_tab kbt.settings matches 0 unless data storage kbt:route_setup {creator_mode:"movement"} run tellraw @s {"text":"--- BROWSE SAVED ROUTES (ID / name / difficulty / source) ---","color":"aqua","bold":true}
execute if score #rc_list_tab kbt.settings matches 0 if data storage kbt:route_setup {creator_mode:"movement"} run tellraw @s {"text":"--- CUSTOM MOVEMENT TRAILS / [Edit] / [Delete] ---","color":"aqua","bold":true}
execute if score #rc_list_tab kbt.settings matches 1 unless data storage kbt:route_setup {creator_mode:"movement"} run tellraw @s {"text":"--- IMPORTED ROUTES ---","color":"aqua","bold":true}
execute if score #rc_list_tab kbt.settings matches 1 if data storage kbt:route_setup {creator_mode:"movement"} run tellraw @s {"text":"--- IMPORTED MOVEMENT TRAILS ---","color":"aqua","bold":true}
function kbt:routes/creator/catalog/list_tabs
scoreboard players set #rc_page kbt.settings 10
execute if score #rc_list_tab kbt.settings matches 0 unless data storage kbt:route_runtime list_queue[0] run tellraw @s {"text":"No saved routes","color":"gray"}
execute if score #rc_list_tab kbt.settings matches 1 unless data storage kbt:route_runtime list_queue[0] run tellraw @s {"text":"No imported routes or trails in this browser","color":"gray"}
execute if data storage kbt:route_runtime list_queue[0] run function kbt:routes/creator/catalog/list_row
function kbt:routes/creator/catalog/list_navigation

tellraw @s {"text":"[Drafts]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 130"}}

scoreboard players enable @s kbt.share
tellraw @s {"text":"[Import .nbt]","color":"green","clickEvent":{"action":"run_command","value":"/trigger kbt.share set 3"}}
