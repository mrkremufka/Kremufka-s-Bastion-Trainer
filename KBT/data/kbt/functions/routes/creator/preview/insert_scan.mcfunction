data modify storage kbt:route_runtime preview_shift.item set from storage kbt:route_runtime preview_shift.queue[0]
data remove storage kbt:route_runtime preview_shift.queue[0]
execute store result score #rc_preview_index kbt.settings run data get storage kbt:route_runtime preview_shift.item.stage
scoreboard players set #rc_preview_move kbt.settings 0
execute if score #rc_preview_index kbt.settings >= #rc_insert_at kbt.settings run scoreboard players set #rc_preview_move kbt.settings 1
execute if score #rc_preview_index kbt.settings = #rc_preview_old kbt.settings if data storage kbt:route_runtime preview_shift.item{type:5} run scoreboard players set #rc_preview_move kbt.settings 1
execute if score #rc_preview_move kbt.settings matches 1 run scoreboard players add #rc_preview_index kbt.settings 1
execute if score #rc_preview_move kbt.settings matches 1 store result storage kbt:route_runtime preview_shift.item.stage int 1 run scoreboard players get #rc_preview_index kbt.settings
data modify storage kbt:route_runtime preview_shift.result append from storage kbt:route_runtime preview_shift.item
execute if data storage kbt:route_runtime preview_shift.queue[0] run function kbt:routes/creator/preview/insert_scan
