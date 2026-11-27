function kbt:routes/creator/stages/separate_checkpoints
execute if data storage kbt:route_runtime current_stage.elements[-1] run function kbt:routes/creator/stages/remove_task
function kbt:routes/creator/stages/restore_checkpoints
