scoreboard players operation #rc_insert_at kbt.settings = #rc_stage kbt.settings
scoreboard players add #rc_insert_at kbt.settings 1
data modify storage kbt:route_runtime checkpoint_insert set value {queue:[],result:[],boundary:{index:0,elements:[]}}
data modify storage kbt:route_runtime checkpoint_insert.queue set from storage kbt:routes draft.stages
execute store result storage kbt:route_runtime checkpoint_insert.boundary.index int 1 run scoreboard players get #rc_insert_at kbt.settings
function kbt:routes/creator/stages/shift_finish
execute if data storage kbt:route_runtime checkpoint_insert.queue[0] run function kbt:routes/creator/stages/insert_scan
data modify storage kbt:routes draft.stages set from storage kbt:route_runtime checkpoint_insert.result
data remove storage kbt:route_runtime checkpoint_insert
