execute store result score #rc_target kbt.settings run data get storage kbt:routes draft.id
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
execute if data storage kbt:route_runtime found{ready:1b,source:1} unless data storage kbt:route_runtime found.import_key run function kbt:routes/creator/rebuild_layout_active
execute unless data storage kbt:route_runtime found{ready:1b,source:1} run tellraw @s {"text":"Save this Custom route before repairing its layout","color":"yellow"}

execute if data storage kbt:route_runtime found.import_key run tellraw @s {"text":"Imported routes and trails are read-only Clear their import slot file to uninstall them","color":"yellow"}
