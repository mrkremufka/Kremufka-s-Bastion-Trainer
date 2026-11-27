execute store result score #rc_target kbt.settings run data get storage kbt:share target.id
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
execute unless data storage kbt:route_runtime found{source:1} run tellraw @s {"text":"Built-in routes can't be exported","color":"yellow"}
execute if data storage kbt:route_runtime found{source:1} unless data storage kbt:route_runtime found.import_key unless data storage kbt:route_runtime found.recipe run tellraw @s {"text":"Missing generation data Open this route in the editor, choose Bastion Generation > Apply & Rebuild, then Save Route Older routes need this once before .nbt export","color":"yellow"}
execute if data storage kbt:route_runtime found{source:1} unless data storage kbt:route_runtime found.import_key if data storage kbt:route_runtime found.recipe run function kbt:share/export/open
