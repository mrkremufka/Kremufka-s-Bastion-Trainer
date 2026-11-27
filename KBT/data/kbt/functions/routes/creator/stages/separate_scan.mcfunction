data modify storage kbt:route_runtime checkpoint_item set from storage kbt:route_runtime checkpoint_queue[0]
execute if data storage kbt:route_runtime checkpoint_item{type:5} run data modify storage kbt:route_runtime checkpoint_group append from storage kbt:route_runtime checkpoint_item
execute unless data storage kbt:route_runtime checkpoint_item{type:5} run data modify storage kbt:route_runtime current_stage.elements append from storage kbt:route_runtime checkpoint_item
data remove storage kbt:route_runtime checkpoint_queue[0]
execute if data storage kbt:route_runtime checkpoint_queue[0] run function kbt:routes/creator/stages/separate_scan
