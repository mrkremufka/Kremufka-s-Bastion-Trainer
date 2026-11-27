execute store result score #gp_bastion kbt.settings run data get storage kbt:presets selected.settings.bastion
execute store result score #gold kbt.settings run data get storage kbt:presets selected.settings.gold
execute store result score #floor kbt.settings run data get storage kbt:presets selected.settings.floor
execute store result score #hoglins kbt.settings run data get storage kbt:presets selected.settings.hoglins
scoreboard players set #piglins kbt.settings 0
execute if data storage kbt:presets selected.settings.piglins store result score #piglins kbt.settings run data get storage kbt:presets selected.settings.piglins
execute store result score #blaze kbt.settings run data get storage kbt:presets selected.settings.blaze
execute store result score #bridge_left kbt.settings run data get storage kbt:presets selected.settings.bridge_left
execute store result score #bridge_right kbt.settings run data get storage kbt:presets selected.settings.bridge_right
execute store result score #h_left kbt.settings run data get storage kbt:presets selected.settings.h_left
execute store result score #s_left_gap kbt.settings run data get storage kbt:presets selected.settings.s_left_gap
execute store result score #s_right_gap kbt.settings run data get storage kbt:presets selected.settings.s_right_gap
execute store result score #s_good_gap kbt.settings run data get storage kbt:presets selected.settings.s_good_gap
execute store result score #s_left_ramp kbt.settings run data get storage kbt:presets selected.settings.s_left_ramp
execute store result score #s_mid_ramp kbt.settings run data get storage kbt:presets selected.settings.s_mid_ramp
execute store result score #s_right_ramp kbt.settings run data get storage kbt:presets selected.settings.s_right_ramp
execute store result score #t_center kbt.settings run data get storage kbt:presets selected.settings.t_center
execute store result score #t_spawner kbt.settings run data get storage kbt:presets selected.settings.t_spawner
execute store result score #bridge_spawn kbt.settings run data get storage kbt:presets selected.settings.bridge_spawn
execute store result score #treasure_spawn kbt.settings run data get storage kbt:presets selected.settings.treasure_spawn
execute store result score #housing_spawn kbt.settings run data get storage kbt:presets selected.settings.housing_spawn
execute store result score #stables_spawn kbt.settings run data get storage kbt:presets selected.settings.stables_spawn
execute store result score #natural_mobs kbt.settings run data get storage kbt:presets selected.settings.natural_mobs
scoreboard players set #s_triple_chest kbt.settings 0
execute if data storage kbt:presets selected.settings.s_triple_chest store result score #s_triple_chest kbt.settings run data get storage kbt:presets selected.settings.s_triple_chest
scoreboard players set #s_lantern_chest kbt.settings 0
execute if data storage kbt:presets selected.settings.s_lantern_chest store result score #s_lantern_chest kbt.settings run data get storage kbt:presets selected.settings.s_lantern_chest
scoreboard players set #s_single_chest kbt.settings 0
execute if data storage kbt:presets selected.settings.s_single_chest store result score #s_single_chest kbt.settings run data get storage kbt:presets selected.settings.s_single_chest
scoreboard players set #s_bad_gap kbt.settings 0
execute if data storage kbt:presets selected.settings.s_bad_gap store result score #s_bad_gap kbt.settings run data get storage kbt:presets selected.settings.s_bad_gap
scoreboard players set #cs_b0 kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_bridge store result score #cs_b0 kbt.settings run data get storage kbt:presets selected.settings.custom_bridge
scoreboard players set #cs_b1 kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_treasure store result score #cs_b1 kbt.settings run data get storage kbt:presets selected.settings.custom_treasure
scoreboard players set #cs_b2 kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_housing store result score #cs_b2 kbt.settings run data get storage kbt:presets selected.settings.custom_housing
scoreboard players set #cs_b3 kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_stables store result score #cs_b3 kbt.settings run data get storage kbt:presets selected.settings.custom_stables
scoreboard players add #cs_revision kbt.settings 1
scoreboard players set #bridge_lava kbt.settings 0
execute if data storage kbt:presets selected.settings.bridge_lava store result score #bridge_lava kbt.settings run data get storage kbt:presets selected.settings.bridge_lava
