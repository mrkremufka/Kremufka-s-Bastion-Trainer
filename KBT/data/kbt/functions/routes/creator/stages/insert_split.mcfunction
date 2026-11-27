data modify storage kbt:route_runtime current_stage set from storage kbt:route_runtime checkpoint_insert.item
function kbt:routes/creator/stages/separate_checkpoints
data modify storage kbt:route_runtime checkpoint_insert.item set from storage kbt:route_runtime current_stage
data modify storage kbt:route_runtime checkpoint_insert.boundary.elements set from storage kbt:route_runtime checkpoint_group
execute if data storage kbt:route_runtime checkpoint_insert.boundary.elements[0] run data modify storage kbt:route_runtime checkpoint_insert.boundary.elements[].stage set from storage kbt:route_runtime checkpoint_insert.boundary.index
data modify storage kbt:route_runtime checkpoint_insert.item.elements append from storage kbt:route_runtime element
data remove storage kbt:route_runtime checkpoint_group
