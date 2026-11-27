data remove storage kbt:route_runtime edit_target
execute if score @s kbt.rc_pick matches 1 if data storage kbt:route_runtime list_choices[0] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[0]
execute if score @s kbt.rc_pick matches 2 if data storage kbt:route_runtime list_choices[1] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[1]
execute if score @s kbt.rc_pick matches 3 if data storage kbt:route_runtime list_choices[2] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[2]
execute if score @s kbt.rc_pick matches 4 if data storage kbt:route_runtime list_choices[3] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[3]
execute if score @s kbt.rc_pick matches 5 if data storage kbt:route_runtime list_choices[4] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[4]
execute if score @s kbt.rc_pick matches 6 if data storage kbt:route_runtime list_choices[5] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[5]
execute if score @s kbt.rc_pick matches 7 if data storage kbt:route_runtime list_choices[6] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[6]
execute if score @s kbt.rc_pick matches 8 if data storage kbt:route_runtime list_choices[7] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[7]
execute if score @s kbt.rc_pick matches 9 if data storage kbt:route_runtime list_choices[8] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[8]
execute if score @s kbt.rc_pick matches 10 if data storage kbt:route_runtime list_choices[9] run data modify storage kbt:route_runtime edit_target set from storage kbt:route_runtime list_choices[9]
execute if data storage kbt:route_runtime edit_target unless data storage kbt:route_runtime edit_target{source:1} run tellraw @s {"text":"Built-in routes are read-only","color":"yellow"}
execute if data storage kbt:route_runtime edit_target{source:1} unless data storage kbt:route_runtime edit_target.import_key if data storage kbt:route_runtime edit_target.layout{mode:"snapshot",schema:1} run function kbt:routes/creator/open_record_request
execute if data storage kbt:route_runtime edit_target{source:1} unless data storage kbt:route_runtime edit_target.import_key unless data storage kbt:route_runtime edit_target.layout{mode:"snapshot",schema:1} run function kbt:routes/creator/catalog/open_unbound

execute if data storage kbt:route_runtime edit_target.import_key run function kbt:routes/creator/import_copy/request
