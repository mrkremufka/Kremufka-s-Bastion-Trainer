data modify storage kbt:presets selected set value {schema:1,id:0,settings:{}}
execute store result score #ps_next kbt.settings run data get storage kbt:presets meta.next_id
execute store result storage kbt:presets selected.id int 1 run scoreboard players get #ps_next kbt.settings
function kbt:settings/presets/capture
function kbt:settings/presets/validate
execute unless score #ps_next kbt.settings matches 1..2147483646 run scoreboard players set #ps_valid kbt.settings 0
execute if score #ps_valid kbt.settings matches 1 run function kbt:settings/presets/save_valid
execute unless score #ps_valid kbt.settings matches 1 run tellraw @s {"text":"Preset could not be saved Check the settings or reload the datapack","color":"yellow"}
