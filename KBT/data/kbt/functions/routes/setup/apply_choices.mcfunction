execute store result score #bastion kbt.settings run data get storage kbt:route_setup chosen.bastion
execute if data storage kbt:route_setup chosen.floor store result score #floor kbt.settings run data get storage kbt:route_setup chosen.floor
execute store result score #bridge_left kbt.settings run data get storage kbt:route_setup chosen.bridge_left
execute store result score #bridge_right kbt.settings run data get storage kbt:route_setup chosen.bridge_right
execute store result score #h_left kbt.settings run data get storage kbt:route_setup chosen.h_left
execute store result score #s_left_gap kbt.settings run data get storage kbt:route_setup chosen.s_left_gap
execute store result score #s_right_gap kbt.settings run data get storage kbt:route_setup chosen.s_right_gap
execute store result score #s_left_ramp kbt.settings run data get storage kbt:route_setup chosen.s_left_ramp
execute store result score #s_mid_ramp kbt.settings run data get storage kbt:route_setup chosen.s_mid_ramp
execute store result score #s_right_ramp kbt.settings run data get storage kbt:route_setup chosen.s_right_ramp
execute store result score #t_center kbt.settings run data get storage kbt:route_setup chosen.t_center
execute store result score #t_spawner kbt.settings run data get storage kbt:route_setup chosen.t_spawner
scoreboard players set #bridge_lava kbt.settings 0
execute if data storage kbt:route_setup chosen.bridge_lava store result score #bridge_lava kbt.settings run data get storage kbt:route_setup chosen.bridge_lava
