scoreboard players set #rb_pb_found kbt.settings 0
scoreboard players set #rb_pb_ticks kbt.settings 2147483647
data modify storage kbt:route_identity input set value {}
execute if data storage kbt:route_browser selected run data modify storage kbt:route_identity input set from storage kbt:route_browser selected
function kbt:routes/identity/build
data modify storage kbt:route_browser selected_definition set from storage kbt:route_identity value
data modify storage kbt:route_browser pb_queue set value []
execute if data storage kbt:route_browser selected{mode:"movement"} if data storage kbt:route_bests records run data modify storage kbt:route_browser pb_queue set from storage kbt:route_bests records
execute if data storage kbt:route_browser selected store result score #rb_selected_id kbt.settings run data get storage kbt:route_browser selected.id
execute if data storage kbt:route_browser pb_queue[0] run function kbt:route_browser/catalog/pb_scan
execute if data storage kbt:route_browser selected unless data storage kbt:route_browser selected{mode:"movement"} run function kbt:route_browser/catalog/pb_phase
execute if score #rb_pb_found kbt.settings matches 1 run function kbt:route_browser/catalog/pb_format
