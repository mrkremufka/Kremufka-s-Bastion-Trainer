function kbt:routes/creator/phases/read
scoreboard players set #rcpn_valid kbt.settings 0
execute if score #rcpn_selected kbt.settings matches 1.. if score #rcpn_selected kbt.settings <= #rcpn_count kbt.settings run scoreboard players set #rcpn_valid kbt.settings 1
scoreboard players operation #rcpn_target kbt.settings = #rcpn_selected kbt.settings
scoreboard players operation #rcpn_target_phase kbt.settings = #rcpn_phase kbt.settings
execute if score @s kbt.rc_menu matches 139 if score #rcpn_phase kbt.settings matches 2.. run scoreboard players operation #rcpn_target kbt.settings = #rcpn_previous kbt.settings
execute if score @s kbt.rc_menu matches 139 if score #rcpn_phase kbt.settings matches 2.. run scoreboard players remove #rcpn_target_phase kbt.settings 1
execute if score @s kbt.rc_menu matches 140 if score #rcpn_next kbt.settings matches 1.. run scoreboard players operation #rcpn_target kbt.settings = #rcpn_next kbt.settings
execute if score @s kbt.rc_menu matches 140 if score #rcpn_next kbt.settings matches 1.. run scoreboard players add #rcpn_target_phase kbt.settings 1
execute if score #rcpn_valid kbt.settings matches 1 unless score #rcpn_target kbt.settings = #rcpn_selected kbt.settings run function kbt:routes/creator/phases/apply
execute if score #rcpn_valid kbt.settings matches 1 if score #rcpn_target kbt.settings = #rcpn_selected kbt.settings if score @s kbt.rc_menu matches 139 run title @s actionbar {"text":"Already in the first phase","color":"yellow"}
execute if score #rcpn_valid kbt.settings matches 1 if score #rcpn_target kbt.settings = #rcpn_selected kbt.settings if score @s kbt.rc_menu matches 140 run title @s actionbar {"text":"Already in the last phase","color":"yellow"}
execute if score #rcpn_valid kbt.settings matches 1 run function kbt:routes/creator/menu/stages_render
execute unless score #rcpn_valid kbt.settings matches 1 run title @s actionbar {"text":"Select an existing stage before switching phases","color":"yellow"}
