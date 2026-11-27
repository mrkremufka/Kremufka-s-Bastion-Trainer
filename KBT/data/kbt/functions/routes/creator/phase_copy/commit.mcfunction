scoreboard players set #cp_show_all kbt.settings 0
execute if score #rc_show_all kbt.settings matches 1 run scoreboard players set #cp_show_all kbt.settings 1
function kbt:routes/creator/history/push
data modify storage kbt:route_runtime phase_copy.candidate.ready set value 0b
data modify storage kbt:route_runtime phase_copy.candidate.tool set value 18
data modify storage kbt:route_runtime phase_copy.candidate.tool_name set value "Fix current phase"
execute store result storage kbt:route_runtime phase_copy.candidate.stage int 1 run scoreboard players get #cp_target_start kbt.settings
data remove storage kbt:route_runtime phase_copy.candidate.checkpoint_chain
data remove storage kbt:route_runtime phase_copy.candidate.checkpoint_regenerate
data modify storage kbt:routes draft set from storage kbt:route_runtime phase_copy.candidate
function kbt:routes/creator/visuals/rebuild
execute if score #cp_show_all kbt.settings matches 1 run scoreboard players set #rc_show_all kbt.settings 1
tellraw @s [{"text":"Phase ","color":"aqua"},{"score":{"name":"#cp_phase","objective":"kbt.settings"},"color":"light_purple"},{"text":" rebuilt from the previous phase Undo restores the previous draft; Save Route keeps the copy","color":"aqua"}]
