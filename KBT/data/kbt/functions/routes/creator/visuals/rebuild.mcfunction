data modify storage kbt:routes draft.visuals set value []
execute if data storage kbt:routes draft.start run data modify storage kbt:routes draft.visuals append from storage kbt:routes draft.start
data modify storage kbt:route_runtime visual_queue set from storage kbt:routes draft.stages
execute if data storage kbt:route_runtime visual_queue[0] run function kbt:routes/creator/visuals/scan
execute if data storage kbt:routes draft.finish run data modify storage kbt:routes draft.visuals append from storage kbt:routes draft.finish
function kbt:routes/creator/message/visuals
execute unless score #rc_preview_shift kbt.settings matches 1 unless score #rc_preview_append kbt.settings matches 1 run function kbt:routes/creator/refresh
execute if score #rc_preview_shift kbt.settings matches 1 run function kbt:routes/creator/preview/insert_after
execute if score #rc_preview_append kbt.settings matches 1 run function kbt:routes/creator/preview/append_checkpoint
scoreboard players set #rc_preview_shift kbt.settings 0
scoreboard players set #rc_preview_append kbt.settings 0
