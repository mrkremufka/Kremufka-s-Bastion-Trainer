execute store result storage kbt:routes draft.stage int 1 run scoreboard players get #rsm_target kbt.settings
data remove storage kbt:routes draft.checkpoint_chain
data remove storage kbt:routes draft.checkpoint_regenerate
scoreboard players set #rc_show_all kbt.settings 0
function kbt:routes/creator/menu/stages_render
