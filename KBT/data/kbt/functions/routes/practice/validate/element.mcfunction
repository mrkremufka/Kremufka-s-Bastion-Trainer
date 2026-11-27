data modify storage kbt:route_runtime validate_element set from storage kbt:route_runtime validate_elements[0]
data remove storage kbt:route_runtime validate_elements[0]
data modify storage kbt:route_practice check_pos set from storage kbt:route_runtime validate_element.pos
execute if data storage kbt:route_practice check_pos[2] run function kbt:routes/practice/validate/position
scoreboard players set #rc_last_type kbt.settings 0
scoreboard players set #rc_element_stage kbt.settings 0
execute store result score #rc_last_type kbt.settings run data get storage kbt:route_runtime validate_element.type
execute unless score #rc_last_type kbt.settings matches 2..6 unless score #rc_last_type kbt.settings matches 8 unless score #rc_last_type kbt.settings matches 10..13 unless score #rc_last_type kbt.settings matches 15 unless score #rc_last_type kbt.settings matches 17 unless score #rc_last_type kbt.settings matches 21 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_element_stage kbt.settings run data get storage kbt:route_runtime validate_element.stage
execute unless score #rc_element_stage kbt.settings = #rc_expected kbt.settings run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_runtime validate_element.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 2..4 unless data storage kbt:route_runtime validate_element.block_pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 10..11 unless data storage kbt:route_runtime validate_element.block_pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 3 unless data storage kbt:route_runtime validate_element{required_block:"minecraft:gold_block"} run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 5 run scoreboard players add #rc_checkpoints kbt.settings 1
execute if score #rc_last_type kbt.settings matches 5 if data storage kbt:route_runtime validate_element{regenerate:1b} run scoreboard players set #rc_regen_seen kbt.settings 1
execute if score #rc_last_type kbt.settings matches 5 unless data storage kbt:route_runtime validate_element{regenerate:1b} run scoreboard players set #rc_plain_seen kbt.settings 1
execute if data storage kbt:route_runtime validate_element.regenerate unless score #rc_last_type kbt.settings matches 5 run scoreboard players set #rc_save_valid kbt.settings 0
execute if data storage kbt:route_runtime validate_element.regenerate unless data storage kbt:route_runtime validate_element{regenerate:1b} run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 5 unless data storage kbt:route_runtime validate_element.radius run scoreboard players set #rc_save_valid kbt.settings 0
scoreboard players set #rc_radius kbt.settings 0
execute if score #rc_last_type kbt.settings matches 5 if data storage kbt:route_runtime validate_element.radius store result score #rc_radius kbt.settings run data get storage kbt:route_runtime validate_element.radius 1000
execute if score #rc_last_type kbt.settings matches 5 unless score #rc_radius kbt.settings matches 1..8000 run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 8 unless data storage kbt:route_runtime validate_element.text.json run scoreboard players set #rc_save_valid kbt.settings 0
execute if score #rc_last_type kbt.settings matches 12 run function kbt:routes/creator/message/validate
execute if score #rc_last_type kbt.settings matches 13 run function kbt:routes/creator/head/validate
execute if score #rc_last_type kbt.settings matches 15 run function kbt:routes/creator/region/validate
execute if score #rc_last_type kbt.settings matches 17 run function kbt:routes/creator/hoglin_region/validate
execute if score #rc_last_type kbt.settings matches 21 run function kbt:routes/creator/gold/validate
execute if data storage kbt:route_runtime validate_elements[0] run function kbt:routes/practice/validate/element
