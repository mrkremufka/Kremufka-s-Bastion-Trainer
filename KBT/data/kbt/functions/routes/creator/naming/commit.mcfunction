function kbt:routes/creator/history/push
data modify storage kbt:routes draft.name set from storage kbt:route_naming candidate
data modify storage kbt:routes draft.ready set value 0b
function kbt:routes/creator/naming/update_saved
execute if score #rc_name_saved kbt.settings matches 1 run tellraw @s [{"text":"Saved route renamed to: ","color":"aqua"},{"nbt":"draft.name","storage":"kbt:routes","color":"gold"},{"text":" Other route edits still require Save Route","color":"gray"}]
execute unless score #rc_name_saved kbt.settings matches 1 run tellraw @s [{"text":"Route name: ","color":"aqua"},{"nbt":"draft.name","storage":"kbt:routes","color":"gold"},{"text":" Use Save Route to save this new route","color":"gray"}]
