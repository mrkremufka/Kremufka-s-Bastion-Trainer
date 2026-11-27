execute store result score #rsm_index kbt.settings run data get storage kbt:route_runtime stage_menu_render.queue[0].index
data remove storage kbt:route_runtime stage_menu_render.queue[0]
execute if score #rsm_index kbt.settings >= #rsm_first kbt.settings if score #rsm_index kbt.settings <= #rsm_last kbt.settings run function kbt:routes/creator/menu/stages_list/row
execute if score #rsm_index kbt.settings < #rsm_last kbt.settings if data storage kbt:route_runtime stage_menu_render.queue[0] run function kbt:routes/creator/menu/stages_list/scan
