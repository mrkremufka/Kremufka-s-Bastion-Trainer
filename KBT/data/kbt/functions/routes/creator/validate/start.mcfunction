scoreboard players set #rc_save_valid kbt.settings 1
execute if data storage kbt:routes draft.import_key run scoreboard players set #rc_save_valid kbt.settings 0
scoreboard players set #rc_id kbt.settings 0
scoreboard players set #rc_type_check kbt.settings -1
scoreboard players set #rc_diff kbt.settings 0
scoreboard players set #rc_name_len kbt.settings 0
scoreboard players set #rc_count kbt.settings 0
scoreboard players set #rc_finish_stage kbt.settings 0
execute unless data storage kbt:routes draft{source:1} run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.start.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.start.rotation[1] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.finish.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.finish.radius run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.stages[0] run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.anchor{dimension:"minecraft:the_nether"} run scoreboard players set #rc_save_valid kbt.settings 0
execute unless data storage kbt:routes draft.anchor.pos[2] run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_id kbt.settings run data get storage kbt:routes draft.id
execute unless score #rc_id kbt.settings matches 1.. run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_type_check kbt.settings run data get storage kbt:routes draft.bastion
execute unless score #rc_type_check kbt.settings matches 0..3 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_diff kbt.settings run data get storage kbt:routes draft.difficulty
execute unless score #rc_diff kbt.settings matches 1..3 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_name_len kbt.settings run data get storage kbt:routes draft.name
execute unless score #rc_name_len kbt.settings matches 1..64 run scoreboard players set #rc_save_valid kbt.settings 0
execute store result score #rc_count kbt.settings run data get storage kbt:routes draft.stages
execute store result score #rc_finish_stage kbt.settings run data get storage kbt:routes draft.finish.stage
execute unless score #rc_finish_stage kbt.settings = #rc_count kbt.settings run scoreboard players set #rc_save_valid kbt.settings 0
scoreboard players set #rc_radius kbt.settings 0
execute if data storage kbt:routes draft.finish.radius store result score #rc_radius kbt.settings run data get storage kbt:routes draft.finish.radius 1000
execute unless score #rc_radius kbt.settings matches 1.. run scoreboard players set #rc_save_valid kbt.settings 0
data modify storage kbt:route_runtime validate_queue set value []
data modify storage kbt:route_runtime validate_queue set from storage kbt:routes draft.stages
scoreboard players set #rc_expected kbt.settings 1
execute if data storage kbt:route_runtime validate_queue[0] run function kbt:routes/creator/validate/stage
execute unless score #rc_save_valid kbt.settings matches 1 run tellraw @s {"text":"Save refused Need Start with rotation, Finish in the final stage, valid metadata/points, one closing Checkpoint per earlier stage and none in the final stage Check /data get storage kbt:routes draft","color":"red"}
