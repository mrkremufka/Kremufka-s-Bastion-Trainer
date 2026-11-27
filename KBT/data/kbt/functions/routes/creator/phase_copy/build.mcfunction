data modify storage kbt:route_runtime phase_copy.candidate set from storage kbt:routes draft
data modify storage kbt:route_runtime phase_copy.queue set from storage kbt:routes draft.stages
data modify storage kbt:route_runtime phase_copy.copy_queue set from storage kbt:route_runtime phase_copy.source
scoreboard players set #cp_scan kbt.settings 0
scoreboard players set #cp_new_index kbt.settings 0
function kbt:routes/creator/phase_copy/rebuild
data modify storage kbt:route_runtime phase_copy.candidate.stages set from storage kbt:route_runtime phase_copy.result
scoreboard players operation #cp_shift kbt.settings = #cp_new_index kbt.settings
scoreboard players operation #cp_shift kbt.settings -= #rc_count kbt.settings
scoreboard players set #cp_finish_original kbt.settings 0
execute if data storage kbt:routes draft.finish store result score #cp_finish_original kbt.settings run data get storage kbt:routes draft.finish.stage
scoreboard players operation #cp_finish kbt.settings = #cp_finish_original kbt.settings
execute if score #cp_finish_original kbt.settings >= #cp_target_start kbt.settings if score #cp_finish_original kbt.settings <= #cp_target_end kbt.settings run scoreboard players operation #cp_finish kbt.settings = #cp_new_target_end kbt.settings
execute if data storage kbt:routes draft.finish if score #cp_finish_original kbt.settings > #cp_target_end kbt.settings run scoreboard players operation #cp_finish kbt.settings += #cp_shift kbt.settings
execute if data storage kbt:routes draft.finish store result storage kbt:route_runtime phase_copy.candidate.finish.stage int 1 run scoreboard players get #cp_finish kbt.settings
data modify storage kbt:route_runtime phase_copy.compare set from storage kbt:routes draft
execute store success score #cp_changed kbt.settings run data modify storage kbt:route_runtime phase_copy.compare set from storage kbt:route_runtime phase_copy.candidate
execute if score #cp_changed kbt.settings matches 1 run function kbt:routes/creator/phase_copy/commit
execute unless score #cp_changed kbt.settings matches 1 run tellraw @s {"text":"This phase already matches the previous phase","color":"gray"}
