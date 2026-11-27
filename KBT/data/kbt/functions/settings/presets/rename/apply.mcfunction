execute unless data storage kbt:presets naming.id run tellraw @s {"text":"Click Rename beside a preset first","color":"yellow"}
execute if data storage kbt:presets naming.id run function kbt:settings/presets/rename/read
