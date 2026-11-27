data modify storage kbt:route_runtime checkpoint_insert.item set from storage kbt:route_runtime checkpoint_insert.queue[0]
data remove storage kbt:route_runtime checkpoint_insert.queue[0]
execute store result score #rc_insert_index kbt.settings run data get storage kbt:route_runtime checkpoint_insert.item.index
execute if score #rc_insert_index kbt.settings = #rc_stage kbt.settings run function kbt:routes/creator/stages/insert_split
execute if score #rc_insert_index kbt.settings = #rc_insert_at kbt.settings run data modify storage kbt:route_runtime checkpoint_insert.result append from storage kbt:route_runtime checkpoint_insert.boundary
execute if score #rc_insert_index kbt.settings >= #rc_insert_at kbt.settings run scoreboard players add #rc_insert_index kbt.settings 1
execute if score #rc_insert_index kbt.settings > #rc_insert_at kbt.settings store result storage kbt:route_runtime checkpoint_insert.item.index int 1 run scoreboard players get #rc_insert_index kbt.settings
execute if score #rc_insert_index kbt.settings > #rc_insert_at kbt.settings if data storage kbt:route_runtime checkpoint_insert.item.elements[0] run data modify storage kbt:route_runtime checkpoint_insert.item.elements[].stage set from storage kbt:route_runtime checkpoint_insert.item.index
data modify storage kbt:route_runtime checkpoint_insert.result append from storage kbt:route_runtime checkpoint_insert.item
execute if data storage kbt:route_runtime checkpoint_insert.queue[0] run function kbt:routes/creator/stages/insert_scan
