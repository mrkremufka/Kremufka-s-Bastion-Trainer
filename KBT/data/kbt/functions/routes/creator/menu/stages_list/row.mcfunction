scoreboard players add #rsm_cursor kbt.settings 1
data modify storage kbt:route_runtime stage_menu_label set value '{"text":"Stage ","color":"white"}'
execute if score #rsm_index kbt.settings = #rcpn_selected kbt.settings run data modify storage kbt:route_runtime stage_menu_label set value '{"text":"Stage ","color":"gold","bold":true}'
function kbt:routes/creator/menu/stages_list/dispatch_row
