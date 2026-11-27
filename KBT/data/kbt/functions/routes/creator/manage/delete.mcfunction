data remove storage kbt:routes editor.pending
scoreboard players set #rc_confirm kbt.settings 0
scoreboard players operation #rc_target kbt.settings = @s kbt.rc_delete
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
execute if data storage kbt:route_runtime found{source:1} unless data storage kbt:route_runtime found.import_key run function kbt:routes/creator/manage/delete_found
execute unless data storage kbt:route_runtime found{source:1} run tellraw @s {"text":"Delete refused: Custom route not found, or the route is protected","color":"red"}

execute if data storage kbt:route_runtime found.import_key run tellraw @s {"text":"Imported routes and trails are read-only Clear their import slot file to uninstall them","color":"yellow"}
