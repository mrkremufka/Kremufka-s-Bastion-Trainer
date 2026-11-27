data modify storage kbt:route_runtime current_stage.elements append from storage kbt:route_runtime checkpoint_group[0]
data remove storage kbt:route_runtime checkpoint_group[0]
execute if data storage kbt:route_runtime checkpoint_group[0] run function kbt:routes/creator/stages/restore_checkpoint_next
