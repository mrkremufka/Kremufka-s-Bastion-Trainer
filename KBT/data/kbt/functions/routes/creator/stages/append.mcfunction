function kbt:routes/creator/stages/separate_checkpoints
execute unless score #rc_tool kbt.settings matches 5 run data modify storage kbt:route_runtime current_stage.elements append from storage kbt:route_runtime element
function kbt:routes/creator/stages/restore_checkpoints
execute if score #rc_tool kbt.settings matches 5 run data modify storage kbt:route_runtime current_stage.elements append from storage kbt:route_runtime element
