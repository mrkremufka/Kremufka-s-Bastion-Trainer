scoreboard players set #ps_valid kbt.settings 1
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.piglins store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.piglins
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.s_triple_chest store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_triple_chest
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.s_lantern_chest store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_lantern_chest
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.s_single_chest store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_single_chest
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.s_bad_gap store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_bad_gap
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected{schema:1} run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.bastion run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.bastion store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.bastion
execute unless score #ps_value kbt.settings matches 0..4 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.gold run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.gold store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.gold
execute unless score #ps_value kbt.settings matches 0..2 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.floor run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.floor store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.floor
execute unless score #ps_value kbt.settings matches 0..3 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.hoglins run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.hoglins store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.hoglins
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.blaze run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.blaze store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.blaze
execute unless score #ps_value kbt.settings matches 0..5 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.bridge_left run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.bridge_left store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.bridge_left
execute unless score #ps_value kbt.settings matches 0..2 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.bridge_right run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.bridge_right store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.bridge_right
execute unless score #ps_value kbt.settings matches 0..2 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.h_left run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.h_left store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.h_left
execute unless score #ps_value kbt.settings matches 0..3 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.s_left_gap run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.s_left_gap store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_left_gap
execute unless score #ps_value kbt.settings matches 0..2 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.s_right_gap run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.s_right_gap store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_right_gap
execute unless score #ps_value kbt.settings matches 0..2 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.s_good_gap run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.s_good_gap store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_good_gap
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.s_left_ramp run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.s_left_ramp store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_left_ramp
execute unless score #ps_value kbt.settings matches 0..3 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.s_mid_ramp run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.s_mid_ramp store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_mid_ramp
execute unless score #ps_value kbt.settings matches 0..3 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.s_right_ramp run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.s_right_ramp store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.s_right_ramp
execute unless score #ps_value kbt.settings matches 0..3 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.t_center run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.t_center store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.t_center
execute unless score #ps_value kbt.settings matches 0..4 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.t_spawner run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.t_spawner store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.t_spawner
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.bridge_spawn run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.bridge_spawn store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.bridge_spawn
execute unless score #ps_value kbt.settings matches 0..10 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.treasure_spawn run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.treasure_spawn store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.treasure_spawn
execute unless score #ps_value kbt.settings matches 0..7 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.housing_spawn run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.housing_spawn store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.housing_spawn
execute unless score #ps_value kbt.settings matches 0..7 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.stables_spawn run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.stables_spawn store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.stables_spawn
execute unless score #ps_value kbt.settings matches 0..8 run scoreboard players set #ps_valid kbt.settings 0
execute unless data storage kbt:presets selected.settings.natural_mobs run scoreboard players set #ps_valid kbt.settings 0
execute if data storage kbt:presets selected.settings.natural_mobs store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.natural_mobs
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_bridge store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.custom_bridge
execute unless score #ps_value kbt.settings matches 0.. run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_treasure store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.custom_treasure
execute unless score #ps_value kbt.settings matches 0.. run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_housing store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.custom_housing
execute unless score #ps_value kbt.settings matches 0.. run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.custom_stables store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.custom_stables
execute unless score #ps_value kbt.settings matches 0.. run scoreboard players set #ps_valid kbt.settings 0
scoreboard players set #ps_value kbt.settings 0
execute if data storage kbt:presets selected.settings.bridge_lava store result score #ps_value kbt.settings run data get storage kbt:presets selected.settings.bridge_lava
execute unless score #ps_value kbt.settings matches 0..1 run scoreboard players set #ps_valid kbt.settings 0
