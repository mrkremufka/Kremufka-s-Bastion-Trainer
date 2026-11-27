function kbt:routes/creator/stages/read
scoreboard players operation #rcpn_selected kbt.settings = #rc_stage kbt.settings
scoreboard players operation #rcpn_count kbt.settings = #rc_count kbt.settings
scoreboard players set #rcpn_scan kbt.settings 0
scoreboard players set #rcpn_phase kbt.settings 1
scoreboard players set #rcpn_total kbt.settings 1
scoreboard players set #rcpn_start kbt.settings 1
scoreboard players set #rcpn_previous kbt.settings 1
scoreboard players set #rcpn_next kbt.settings 0
data modify storage kbt:route_runtime editor_phase_navigation set value {queue:[]}
data modify storage kbt:route_runtime editor_phase_navigation.queue set from storage kbt:routes draft.stages
execute if data storage kbt:route_runtime editor_phase_navigation.queue[0] run function kbt:routes/creator/phases/scan
data remove storage kbt:route_runtime editor_phase_navigation
