data modify storage kbt:route_runtime editor_phase_navigation.item set from storage kbt:route_runtime editor_phase_navigation.queue[0]
data remove storage kbt:route_runtime editor_phase_navigation.queue[0]
scoreboard players add #rcpn_scan kbt.settings 1
execute if score #rcpn_scan kbt.settings < #rcpn_count kbt.settings if data storage kbt:route_runtime editor_phase_navigation.item.elements[{type:5,regenerate:1b}] run function kbt:routes/creator/phases/boundary
execute if data storage kbt:route_runtime editor_phase_navigation.queue[0] run function kbt:routes/creator/phases/scan
