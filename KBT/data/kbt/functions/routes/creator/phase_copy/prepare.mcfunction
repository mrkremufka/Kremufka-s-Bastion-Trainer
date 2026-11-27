scoreboard players set #cp_scan kbt.settings 0
scoreboard players set #cp_steps kbt.settings 0
data modify storage kbt:route_runtime phase_copy.queue set from storage kbt:routes draft.stages
function kbt:routes/creator/phase_copy/collect
execute if score #cp_steps kbt.settings matches 1.. run function kbt:routes/creator/phase_copy/build
execute unless score #cp_steps kbt.settings matches 1.. run tellraw @s {"text":"The previous phase has no steps or ordinary checkpoints to rebuild","color":"yellow"}
