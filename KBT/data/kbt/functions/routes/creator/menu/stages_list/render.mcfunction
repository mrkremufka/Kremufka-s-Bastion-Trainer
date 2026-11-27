execute store result score #rsm_current_owner kbt.settings run data get storage kbt:routes draft.id
execute unless score #rsm_owner kbt.settings = #rsm_current_owner kbt.settings run scoreboard players set #rsm_page kbt.settings 0
execute unless score #rsm_view_phase kbt.settings = #rcpn_phase kbt.settings run scoreboard players set #rsm_page kbt.settings 0
scoreboard players operation #rsm_start kbt.settings = #rcpn_start kbt.settings
scoreboard players operation #rsm_end kbt.settings = #rcpn_count kbt.settings
execute if score #rcpn_next kbt.settings matches 1.. run scoreboard players operation #rsm_end kbt.settings = #rcpn_next kbt.settings
execute if score #rcpn_next kbt.settings matches 1.. run scoreboard players remove #rsm_end kbt.settings 1
scoreboard players set #rsm_ten kbt.settings 10
scoreboard players operation #rsm_maxpage kbt.settings = #rsm_end kbt.settings
scoreboard players operation #rsm_maxpage kbt.settings -= #rsm_start kbt.settings
scoreboard players operation #rsm_maxpage kbt.settings /= #rsm_ten kbt.settings
execute unless score #rsm_page kbt.settings matches 0.. run scoreboard players set #rsm_page kbt.settings 0
execute if score #rsm_page kbt.settings > #rsm_maxpage kbt.settings run scoreboard players operation #rsm_page kbt.settings = #rsm_maxpage kbt.settings
scoreboard players operation #rsm_owner kbt.settings = #rsm_current_owner kbt.settings
scoreboard players operation #rsm_view_phase kbt.settings = #rcpn_phase kbt.settings
scoreboard players operation #rsm_count kbt.settings = #rcpn_count kbt.settings
scoreboard players operation #rsm_first kbt.settings = #rsm_page kbt.settings
scoreboard players operation #rsm_first kbt.settings *= #rsm_ten kbt.settings
scoreboard players operation #rsm_first kbt.settings += #rsm_start kbt.settings
scoreboard players operation #rsm_last kbt.settings = #rsm_first kbt.settings
scoreboard players add #rsm_last kbt.settings 9
execute if score #rsm_last kbt.settings > #rsm_end kbt.settings run scoreboard players operation #rsm_last kbt.settings = #rsm_end kbt.settings
function kbt:routes/creator/menu/stages_list/clear_slots
scoreboard players set #rsm_cursor kbt.settings 0
data modify storage kbt:route_runtime stage_menu_render set value {queue:[]}
data modify storage kbt:route_runtime stage_menu_render.queue set from storage kbt:routes draft.stages
execute if data storage kbt:route_runtime stage_menu_render.queue[0] run function kbt:routes/creator/menu/stages_list/scan
data remove storage kbt:route_runtime stage_menu_render
data remove storage kbt:route_runtime stage_menu_label
scoreboard players operation #rsm_page_display kbt.settings = #rsm_page kbt.settings
scoreboard players add #rsm_page_display kbt.settings 1
scoreboard players operation #rsm_pages kbt.settings = #rsm_maxpage kbt.settings
scoreboard players add #rsm_pages kbt.settings 1
tellraw @s [{"text":"[<] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_stageui set 31"}},{"text":"Page ","color":"gray"},{"score":{"name":"#rsm_page_display","objective":"kbt.settings"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"#rsm_pages","objective":"kbt.settings"},"color":"white"},{"text":" [>]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_stageui set 32"}}]
