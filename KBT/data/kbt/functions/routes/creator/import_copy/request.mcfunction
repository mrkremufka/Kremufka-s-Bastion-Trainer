scoreboard players set #rc_import_ok kbt.settings 0
execute store result score #rc_target kbt.settings run data get storage kbt:route_runtime edit_target.id
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
data modify storage kbt:route_runtime import_compare set from storage kbt:route_runtime edit_target
scoreboard players set #rc_import_changed kbt.settings 1
execute if data storage kbt:route_runtime found.import_key store success score #rc_import_changed kbt.settings run data modify storage kbt:route_runtime import_compare set from storage kbt:route_runtime found
execute unless score #ki_busy kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. unless score #rp_active kbt.settings matches 1 unless score #rc_generating kbt.settings matches 1 unless score @s kbt.edit matches 1..3 if score #rc_import_changed kbt.settings matches 0 if data storage kbt:route_runtime found{source:1,ready:1b} if data storage kbt:route_runtime found.layout{mode:"builtin",schema:1,imported:1b} run scoreboard players set #rc_import_ok kbt.settings 1
execute if score #rc_import_ok kbt.settings matches 1 run function kbt:routes/creator/open_record_request
execute unless score #rc_import_ok kbt.settings matches 1 run tellraw @s {"text":"Import changed or loading/editing is busy Reopen Imported after it finishes and try again","color":"yellow"}
