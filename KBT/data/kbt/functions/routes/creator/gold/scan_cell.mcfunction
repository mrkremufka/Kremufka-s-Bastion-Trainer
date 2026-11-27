scoreboard players set #rc_gold_changed kbt.settings 1
data modify storage kbt:route_runtime gold_cell set from storage kbt:route_runtime element.block_pos
execute store result score #rc_gold_type kbt.settings run data get storage kbt:route_runtime gold_elements[0].type
execute if score #rc_gold_type kbt.settings matches 21 store success score #rc_gold_changed kbt.settings run data modify storage kbt:route_runtime gold_cell set from storage kbt:route_runtime gold_elements[0].block_pos
execute if score #rc_gold_changed kbt.settings matches 0 run scoreboard players set #rc_gold_duplicate kbt.settings 1
data remove storage kbt:route_runtime gold_elements[0]
execute if data storage kbt:route_runtime gold_elements[0] run function kbt:routes/creator/gold/scan_cell
