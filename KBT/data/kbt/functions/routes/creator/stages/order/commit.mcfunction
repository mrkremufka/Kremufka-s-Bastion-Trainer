function kbt:routes/creator/history/push
scoreboard players operation #rso_lower kbt.settings = #rsm_target kbt.settings
scoreboard players operation #rso_upper kbt.settings = #rsm_dest kbt.settings
execute if score #rso_lower kbt.settings > #rso_upper kbt.settings run function kbt:routes/creator/stages/order/sort_indices
data modify storage kbt:route_runtime stage_order set value {queue:[],result:[],a:{},b:{}}
data modify storage kbt:route_runtime stage_order.queue set from storage kbt:routes draft.stages
execute if data storage kbt:route_runtime stage_order.queue[0] run function kbt:routes/creator/stages/order/collect
execute if score #rso_upper kbt.settings = #rsm_end kbt.settings if score #rsm_end kbt.settings = #rcpn_count kbt.settings run function kbt:routes/creator/stages/order/final_boundary
execute if score #rso_upper kbt.settings = #rsm_end kbt.settings if score #rsm_end kbt.settings < #rcpn_count kbt.settings run function kbt:routes/creator/stages/order/phase_boundary
data modify storage kbt:route_runtime stage_order.queue set from storage kbt:routes draft.stages
execute if data storage kbt:route_runtime stage_order.queue[0] run function kbt:routes/creator/stages/order/rebuild
data modify storage kbt:routes draft.stages set from storage kbt:route_runtime stage_order.result
execute store result storage kbt:routes draft.stage int 1 run scoreboard players get #rsm_dest kbt.settings
data modify storage kbt:routes draft.ready set value 0b
data remove storage kbt:routes draft.checkpoint_chain
data remove storage kbt:routes draft.checkpoint_regenerate
data remove storage kbt:route_runtime stage_order
scoreboard players operation #rso_show_all kbt.settings = #rc_show_all kbt.settings
function kbt:routes/creator/visuals/rebuild
scoreboard players operation #rc_show_all kbt.settings = #rso_show_all kbt.settings
scoreboard players operation #rsm_page kbt.settings = #rsm_dest kbt.settings
scoreboard players operation #rsm_page kbt.settings -= #rsm_start kbt.settings
scoreboard players operation #rsm_page kbt.settings /= #rsm_ten kbt.settings
function kbt:routes/creator/menu/stages_render
