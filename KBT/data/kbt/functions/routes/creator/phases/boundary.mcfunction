scoreboard players add #rcpn_total kbt.settings 1
scoreboard players operation #rcpn_candidate kbt.settings = #rcpn_scan kbt.settings
scoreboard players add #rcpn_candidate kbt.settings 1
execute if score #rcpn_scan kbt.settings < #rcpn_selected kbt.settings run scoreboard players operation #rcpn_previous kbt.settings = #rcpn_start kbt.settings
execute if score #rcpn_scan kbt.settings < #rcpn_selected kbt.settings run scoreboard players operation #rcpn_start kbt.settings = #rcpn_candidate kbt.settings
execute if score #rcpn_scan kbt.settings < #rcpn_selected kbt.settings run scoreboard players add #rcpn_phase kbt.settings 1
execute if score #rcpn_scan kbt.settings >= #rcpn_selected kbt.settings if score #rcpn_next kbt.settings matches 0 run scoreboard players operation #rcpn_next kbt.settings = #rcpn_candidate kbt.settings
