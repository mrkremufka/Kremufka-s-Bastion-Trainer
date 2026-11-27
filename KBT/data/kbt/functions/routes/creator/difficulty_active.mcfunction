function kbt:routes/creator/history/push
execute store result score #rc_diff kbt.settings run data get storage kbt:routes draft.difficulty
scoreboard players add #rc_diff kbt.settings 1
execute if score #rc_diff kbt.settings matches 4.. run scoreboard players set #rc_diff kbt.settings 1
execute store result storage kbt:routes draft.difficulty int 1 run scoreboard players get #rc_diff kbt.settings
data modify storage kbt:routes draft.ready set value 0b
function kbt:routes/creator/menu/difficulty_label
tellraw @s [{"text":"Difficulty: ","color":"gray"},{"nbt":"editor_labels.difficulty","storage":"kbt:route_runtime","interpret":true}]
