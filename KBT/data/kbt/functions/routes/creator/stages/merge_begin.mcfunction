function kbt:routes/creator/history/push
scoreboard players operation #rc_merge_next kbt.settings = #rc_stage kbt.settings
scoreboard players add #rc_merge_next kbt.settings 1
data modify storage kbt:route_runtime merge_queue set from storage kbt:routes draft.stages
data modify storage kbt:route_runtime merge_result set value []
function kbt:routes/creator/stages/merge_scan
data modify storage kbt:routes draft.stages set from storage kbt:route_runtime merge_result
scoreboard players remove #rc_count kbt.settings 1
execute if data storage kbt:routes draft.finish store result score #rc_finish_stage kbt.settings run data get storage kbt:routes draft.finish.stage
execute if data storage kbt:routes draft.finish if score #rc_finish_stage kbt.settings > #rc_stage kbt.settings run scoreboard players remove #rc_finish_stage kbt.settings 1
execute if data storage kbt:routes draft.finish store result storage kbt:routes draft.finish.stage int 1 run scoreboard players get #rc_finish_stage kbt.settings
data modify storage kbt:routes draft.ready set value 0b
function kbt:routes/creator/visuals/rebuild
tellraw @s {"text":"Closing checkpoint removed; next stage merged into this one Undo restores both stages","color":"aqua"}
