function kbt:routes/creator/history/push
data modify storage kbt:routes draft set from storage kbt:route_runtime remove_draft
data modify storage kbt:routes draft.ready set value 0b
data remove storage kbt:routes draft.checkpoint_chain
data remove storage kbt:routes draft.checkpoint_regenerate
function kbt:routes/creator/visuals/rebuild
execute if score #rc_remove_show_all kbt.settings matches 1 run scoreboard players set #rc_show_all kbt.settings 1
tellraw @s {"text":"Selected route element/area point removed Undo restores it; later edits are kept","color":"aqua"}
