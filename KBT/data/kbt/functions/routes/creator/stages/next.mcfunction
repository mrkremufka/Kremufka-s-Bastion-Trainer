execute if score @s kbt.creator matches 1 run data remove storage kbt:routes draft.checkpoint_chain
execute if score @s kbt.creator matches 1 run data remove storage kbt:routes draft.checkpoint_regenerate
execute if score @s kbt.creator matches 1 run function kbt:routes/creator/stages/read
execute if score @s kbt.creator matches 1 if score #rc_stage kbt.settings < #rc_count kbt.settings run scoreboard players add #rc_stage kbt.settings 1
execute if score @s kbt.creator matches 1 store result storage kbt:routes draft.stage int 1 run scoreboard players get #rc_stage kbt.settings
execute if score @s kbt.creator matches 1 run function kbt:routes/creator/stages/show
