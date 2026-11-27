data modify storage kbt:route_runtime current_stage set from storage kbt:route_runtime stage_order.a
function kbt:routes/creator/stages/separate_checkpoints
data modify storage kbt:route_runtime stage_order.a set from storage kbt:route_runtime current_stage
execute if data storage kbt:route_runtime checkpoint_group[0] run data modify storage kbt:route_runtime stage_order.b.elements append from storage kbt:route_runtime checkpoint_group[]
data remove storage kbt:route_runtime checkpoint_group
data remove storage kbt:route_runtime checkpoint_queue
data remove storage kbt:route_runtime checkpoint_item
data remove storage kbt:route_runtime current_stage
