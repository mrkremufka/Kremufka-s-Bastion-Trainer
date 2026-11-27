scoreboard players set #rc_save_valid kbt.settings 1
execute store result score #rp_anchor_x kbt.settings run data get storage kbt:route_practice candidate.anchor.pos[0] 10000
execute store result score #rp_anchor_y kbt.settings run data get storage kbt:route_practice candidate.anchor.pos[1] 10000
execute store result score #rp_anchor_z kbt.settings run data get storage kbt:route_practice candidate.anchor.pos[2] 10000
execute unless score #rp_anchor_x kbt.settings matches 10000000 run scoreboard players set #rc_save_valid kbt.settings 0
execute unless score #rp_anchor_y kbt.settings matches 1280000 run scoreboard players set #rc_save_valid kbt.settings 0
execute unless score #rp_anchor_z kbt.settings matches 10000000 run scoreboard players set #rc_save_valid kbt.settings 0
data modify storage kbt:route_practice check_pos set from storage kbt:route_practice candidate.start.pos
execute if data storage kbt:route_practice check_pos[2] run function kbt:routes/practice/validate/position
data modify storage kbt:route_practice check_pos set from storage kbt:route_practice candidate.finish.pos
execute if data storage kbt:route_practice check_pos[2] run function kbt:routes/practice/validate/position
scoreboard players set #rc_id kbt.settings 0
scoreboard players set #rc_type_check kbt.settings -1
scoreboard players set #rc_diff kbt.settings 0
scoreboard players set #rc_name_len kbt.settings 0
scoreboard players set #rc_count kbt.settings 0
scoreboard players set #rc_finish_stage kbt.settings 0
execute unless data storage kbt:route_practice candidate{source:1} unless data storage kbt:route_practice candidate{source:0} run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.start.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.start.rotation[1] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.finish.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.finish.radius run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.stages[0] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.anchor{dimension:"minecraft:the_nether"} run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:route_practice candidate.anchor.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_id kbt.settings run data get storage kbt:route_practice candidate.id
execute unless score #rc_id kbt.settings matches 1.. run scoreboard players set #rc_save_valid kbt.settings 0
execute if data storage kbt:route_practice candidate{source:0} unless score #rc_id kbt.settings matches 1000001..1999999 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_type_check kbt.settings run data get storage kbt:route_practice candidate.bastion
execute unless score #rc_type_check kbt.settings matches 0..3 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_diff kbt.settings run data get storage kbt:route_practice candidate.difficulty
execute unless score #rc_diff kbt.settings matches 1..3 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_name_len kbt.settings run data get storage kbt:route_practice candidate.name
execute unless score #rc_name_len kbt.settings matches 1..64 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_count kbt.settings run data get storage kbt:route_practice candidate.stages
execute store result score #rc_finish_stage kbt.settings run data get storage kbt:route_practice candidate.finish.stage
execute unless score #rc_finish_stage kbt.settings = #rc_count kbt.settings run scoreboard players set #rc_save_valid kbt.settings 0
scoreboard players set #rc_radius kbt.settings 0
execute if data storage kbt:route_practice candidate.finish.radius store result score #rc_radius kbt.settings run data get storage kbt:route_practice candidate.finish.radius 1000
execute unless score #rc_radius kbt.settings matches 1..8000 run scoreboard players set #rc_save_valid kbt.settings 0
data modify storage kbt:route_runtime validate_queue set value []
data modify storage kbt:route_runtime validate_queue set from storage kbt:route_practice candidate.stages
scoreboard players set #rc_expected kbt.settings 1
execute if data storage kbt:route_runtime validate_queue[0] run function kbt:routes/practice/validate/stage
execute unless score #rc_save_valid kbt.settings matches 1 run tellraw @s {"text":"Route refused Check Start/Finish, ordered checkpoints, saved task metadata, anchor 1000/128/1000, all points inside X/Z 936..1063 Y 128..255, and checkpoint/Finish radius <=8 Inspect /data get storage kbt:route_practice candidate","color":"red"}
