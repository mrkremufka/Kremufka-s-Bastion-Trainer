scoreboard players set #sj_pick_id kbt.settings 0
execute store result score #sj_pick_id kbt.settings run data get storage kbt:movement_specific selected.id
scoreboard players operation #rc_target kbt.settings = #sj_pick_id kbt.settings
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
data remove storage kbt:movement_specific record
execute if data storage kbt:route_runtime found run data modify storage kbt:movement_specific record set from storage kbt:route_runtime found
function kbt:movement/specific/match_record
scoreboard players operation #sj_pick_valid kbt.settings = #sj_match kbt.settings
data modify storage kbt:route_favorites input set from storage kbt:movement_specific selected
function kbt:route_browser/catalog/favorites/key
data modify storage kbt:movement_specific selected_key set from storage kbt:route_favorites key
data modify storage kbt:route_favorites input set from storage kbt:movement_specific record
function kbt:route_browser/catalog/favorites/key
execute store success score #sj_key_changed kbt.settings run data modify storage kbt:movement_specific selected_key set from storage kbt:route_favorites key
execute if score #sj_key_changed kbt.settings matches 1 run scoreboard players set #sj_pick_valid kbt.settings 0
execute if score #sj_pick_valid kbt.settings matches 1 if score #sj_action kbt.settings matches 0 run function kbt:movement/specific/prepare_launch
execute if score #sj_pick_valid kbt.settings matches 1 if score #sj_action kbt.settings matches 1 run function kbt:movement/specific/favorites/toggle
execute if score #sj_pick_valid kbt.settings matches 0 run function kbt:movement/specific/refresh
