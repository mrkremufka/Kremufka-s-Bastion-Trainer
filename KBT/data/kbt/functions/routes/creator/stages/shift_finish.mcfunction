scoreboard players operation #rc_shift_at kbt.settings = #rc_stage kbt.settings
execute if score #rc_insertstage kbt.settings matches 1 run scoreboard players add #rc_shift_at kbt.settings 1
scoreboard players set #rc_finish_stage kbt.settings 0
execute if data storage kbt:routes draft.finish.stage store result score #rc_finish_stage kbt.settings run data get storage kbt:routes draft.finish.stage
scoreboard players set #rc_shift_finish kbt.settings 0
execute if score #rc_finish_stage kbt.settings matches 1.. if score #rc_finish_stage kbt.settings >= #rc_shift_at kbt.settings if score #rc_finish_stage kbt.settings <= #rc_count kbt.settings run scoreboard players set #rc_shift_finish kbt.settings 1
execute if score #rc_shift_finish kbt.settings matches 1 run scoreboard players add #rc_finish_stage kbt.settings 1
execute if score #rc_shift_finish kbt.settings matches 1 store result storage kbt:routes draft.finish.stage int 1 run scoreboard players get #rc_finish_stage kbt.settings
