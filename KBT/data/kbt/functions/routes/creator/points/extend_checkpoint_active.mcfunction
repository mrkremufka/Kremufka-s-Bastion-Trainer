data modify storage kbt:route_runtime checkpoint_focus set from storage kbt:routes draft.stage
scoreboard players operation #rc_stage kbt.settings = #rc_chain kbt.settings
execute store result storage kbt:route_runtime element.stage int 1 run scoreboard players get #rc_stage kbt.settings
scoreboard players set #rc_extend kbt.settings 1
