data modify storage kbt:route_runtime remove_draft set from storage kbt:routes draft
execute store result score #rc_remove_type kbt.settings run data get storage kbt:route_runtime remove_target.type
execute store result score #rc_remove_stage kbt.settings run data get storage kbt:route_runtime remove_target.stage
execute store result score #rc_remove_focus kbt.settings run data get storage kbt:routes draft.stage
execute store result score #rc_remove_count kbt.settings run data get storage kbt:routes draft.stages
scoreboard players set #rc_remove_found kbt.settings 0
scoreboard players set #rc_remove_show_all kbt.settings 0
execute if score #rc_show_all kbt.settings matches 1 run scoreboard players set #rc_remove_show_all kbt.settings 1
scoreboard players set #rc_remove_merge kbt.settings 0
execute if score #rc_remove_type kbt.settings matches 1 run function kbt:routes/creator/remove/endpoint
execute if score #rc_remove_type kbt.settings matches 7 run function kbt:routes/creator/remove/endpoint
execute unless score #rc_remove_type kbt.settings matches 1 unless score #rc_remove_type kbt.settings matches 7 run function kbt:routes/creator/remove/stages
execute if score #rc_remove_found kbt.settings matches 1 if score #rc_remove_merge kbt.settings matches 0 run function kbt:routes/creator/remove/commit
execute if score #rc_remove_found kbt.settings matches 1 if score #rc_remove_merge kbt.settings matches 1 run function kbt:routes/creator/remove/merge
execute unless score #rc_remove_found kbt.settings matches 1 run tellraw @s {"text":"That preview is outdated Refresh Preview All or Current Stage and try again","color":"yellow"}
