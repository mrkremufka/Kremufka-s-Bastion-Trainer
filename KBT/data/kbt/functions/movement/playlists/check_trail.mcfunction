scoreboard players operation #rc_target kbt.settings = #mpl_check_id kbt.settings
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
scoreboard players set #mpl_check_record_ok kbt.settings 0
scoreboard players set #mpl_check_bastion kbt.settings -1
execute if data storage kbt:route_runtime found.bastion store result score #mpl_check_bastion kbt.settings run data get storage kbt:route_runtime found.bastion
execute if score #mpl_check_bastion kbt.settings matches 0..3 if score #mpl_check_id kbt.settings matches 1..90000 if data storage kbt:route_runtime found{mode:"movement",ready:1b,source:1} if data storage kbt:route_runtime found.layout{mode:"snapshot",schema:1,bank:0} run scoreboard players set #mpl_check_record_ok kbt.settings 1
execute if score #mpl_check_bastion kbt.settings matches 0..3 if score #mpl_check_id kbt.settings matches 1..90000 if data storage kbt:route_runtime found{mode:"movement",ready:1b,source:1} if data storage kbt:route_runtime found.layout{mode:"snapshot",schema:1,bank:1} run scoreboard players set #mpl_check_record_ok kbt.settings 1
execute if score #mpl_check_bastion kbt.settings matches 0..3 if score #mpl_check_id kbt.settings matches 1000001..1999999 if data storage kbt:route_runtime found{mode:"movement",ready:1b,source:0} if data storage kbt:route_runtime found.layout{mode:"builtin",schema:1} run scoreboard players set #mpl_check_record_ok kbt.settings 1
execute if score #mpl_check_bastion kbt.settings matches 0..3 if score #mpl_check_id kbt.settings matches 1..90000 if data storage kbt:route_runtime found{mode:"movement",ready:1b,source:1} if data storage kbt:route_runtime found.layout{mode:"builtin",schema:1,imported:1b} if data storage kbt:route_runtime found.import_key run scoreboard players set #mpl_check_record_ok kbt.settings 1
execute if score #mpl_check_record_ok kbt.settings matches 1 run function kbt:movement/playlists/check_geometry
