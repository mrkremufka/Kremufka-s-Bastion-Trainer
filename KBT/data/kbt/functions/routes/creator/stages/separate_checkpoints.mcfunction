data modify storage kbt:route_runtime checkpoint_queue set from storage kbt:route_runtime current_stage.elements
data modify storage kbt:route_runtime checkpoint_group set value []
data modify storage kbt:route_runtime current_stage.elements set value []
execute if data storage kbt:route_runtime checkpoint_queue[0] run function kbt:routes/creator/stages/separate_scan
