data modify storage kbt:routes records set from storage kbt:route_runtime catalog_result
data modify storage kbt:routes draft.ready set value 1b
function kbt:routes/catalog_changed
execute unless data storage kbt:routes draft{mode:"movement"} run tellraw @s [{"text":"Route saved ID: ","color":"green"},{"nbt":"draft.id","storage":"kbt:routes","color":"gold"},{"text":" Use Play Saved Route to practice; the first play from this editor prepares the layout automatically","color":"gray"}]
execute if data storage kbt:routes draft{mode:"movement"} run tellraw @s [{"text":"Movement Trail saved ID: ","color":"green"},{"nbt":"draft.id","storage":"kbt:routes","color":"gold"}]
