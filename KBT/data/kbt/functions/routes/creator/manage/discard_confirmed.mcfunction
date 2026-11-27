function kbt:routes/creator/text/clear
execute store result score #rc_target kbt.settings run data get storage kbt:routes draft.id
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
data modify storage kbt:routes editor.backup_draft set from storage kbt:routes draft
function kbt:routes/creator/naming/clear
execute if data storage kbt:route_runtime found{source:1} unless data storage kbt:route_runtime found.import_key run data modify storage kbt:routes draft set from storage kbt:route_runtime found
execute if data storage kbt:route_runtime found.import_key run function kbt:routes/creator/new_draft
execute unless data storage kbt:route_runtime found{source:1} run function kbt:routes/creator/new_draft
data modify storage kbt:routes editor.history set value []
data modify storage kbt:routes editor.redo set value []
function kbt:routes/creator/visuals/rebuild
tellraw @s {"text":"Edits discarded Previous work is available in editor.backup_draft","color":"aqua"}
