function kbt:routes/creator/stages/read
data modify storage kbt:route_runtime phase_copy set value {queue:[],source:[],boundary:[],result:[]}
scoreboard players operation #cp_selected kbt.settings = #rc_stage kbt.settings
scoreboard players set #cp_source_start kbt.settings 1
scoreboard players set #cp_source_end kbt.settings 0
scoreboard players set #cp_target_start kbt.settings 1
scoreboard players operation #cp_target_end kbt.settings = #rc_count kbt.settings
scoreboard players set #cp_end_found kbt.settings 0
scoreboard players set #cp_phase kbt.settings 1
scoreboard players set #cp_scan kbt.settings 0
data modify storage kbt:route_runtime phase_copy.queue set from storage kbt:routes draft.stages
execute if score #cp_selected kbt.settings matches 1.. if score #cp_selected kbt.settings <= #rc_count kbt.settings if data storage kbt:route_runtime phase_copy.queue[0] run function kbt:routes/creator/phase_copy/boundaries
execute if score #cp_source_end kbt.settings matches 1.. run function kbt:routes/creator/phase_copy/prepare
execute unless score #cp_source_end kbt.settings matches 1.. run tellraw @s {"text":"This phase has no previous phase Select a stage after a New Phase checkpoint first","color":"yellow"}
data remove storage kbt:route_runtime phase_copy
