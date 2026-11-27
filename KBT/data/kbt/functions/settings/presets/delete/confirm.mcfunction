data remove storage kbt:presets selected
scoreboard players set #ps_delete_ok kbt.settings 0
execute if data storage kbt:presets pending_delete.id store result score #ps_target kbt.settings run data get storage kbt:presets pending_delete.id
execute if data storage kbt:presets pending_delete.id run function kbt:settings/presets/lookup_target
execute if data storage kbt:presets pending_delete.id if data storage kbt:presets selected run data modify storage kbt:presets delete_probe set from storage kbt:presets pending_delete
execute if data storage kbt:presets pending_delete.id if data storage kbt:presets selected store success score #ps_delete_changed kbt.settings run data modify storage kbt:presets delete_probe set from storage kbt:presets selected
execute if data storage kbt:presets pending_delete.id if data storage kbt:presets selected if score #ps_delete_changed kbt.settings matches 0 run scoreboard players set #ps_delete_ok kbt.settings 1
execute if score #ps_delete_ok kbt.settings matches 1 run function kbt:settings/presets/delete/commit
execute unless score #ps_delete_ok kbt.settings matches 1 run tellraw @s {"text":"Preset changed or is unavailable Select Delete again from the current list","color":"yellow"}
data remove storage kbt:presets pending_delete
function kbt:settings/presets/menu
