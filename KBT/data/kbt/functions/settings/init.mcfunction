scoreboard objectives add kbt.settings dummy
scoreboard objectives add kbt.menu dummy
scoreboard objectives add kbt.gold dummy
scoreboard objectives add kbt.floor dummy
scoreboard objectives add kbt.hoglins dummy
scoreboard objectives add kbt.piglins dummy
scoreboard objectives add kbt.blaze dummy
scoreboard objectives add kbt.spawn dummy
scoreboard objectives add kbt.tspawn dummy
scoreboard objectives add kbt.hspawn dummy
scoreboard objectives add kbt.sspawn dummy
scoreboard objectives add kbt.debug dummy
scoreboard objectives add kbt.natural dummy
scoreboard objectives add kbt.origin dummy
scoreboard objectives add kbt.page dummy
scoreboard objectives add kbt.gp_layout dummy
scoreboard objectives add kbt.left dummy
scoreboard objectives add kbt.right dummy
scoreboard objectives add kbt.specific dummy
scoreboard objectives add kbt.slg dummy
scoreboard objectives add kbt.srg dummy
scoreboard objectives add kbt.sgg dummy
scoreboard objectives add kbt.stc dummy
execute unless score #s_triple_chest kbt.settings matches 0..1 run scoreboard players set #s_triple_chest kbt.settings 0
scoreboard objectives add kbt.slc dummy
execute unless score #s_lantern_chest kbt.settings matches 0..1 run scoreboard players set #s_lantern_chest kbt.settings 0
scoreboard objectives add kbt.ssc dummy
execute unless score #s_single_chest kbt.settings matches 0..1 run scoreboard players set #s_single_chest kbt.settings 0
scoreboard objectives add kbt.sbg dummy
execute unless score #s_bad_gap kbt.settings matches 0..1 run scoreboard players set #s_bad_gap kbt.settings 0
execute unless score #s_good_gap kbt.settings matches 0..1 run scoreboard players set #s_good_gap kbt.settings 0
scoreboard objectives add kbt.slr dummy
scoreboard objectives add kbt.smr dummy
scoreboard objectives add kbt.srr dummy
scoreboard objectives add kbt.tc dummy
scoreboard objectives add kbt.ts dummy
scoreboard objectives add kbt.hl dummy
execute unless score #bastion kbt.settings matches 0..4 run scoreboard players set #bastion kbt.settings 0
execute unless score #gp_bastion kbt.settings matches 0..4 run scoreboard players operation #gp_bastion kbt.settings = #bastion kbt.settings
execute unless score #mv_choice kbt.settings matches 0..3 run scoreboard players operation #mv_choice kbt.settings = #bastion kbt.settings
execute unless score #mv_choice kbt.settings matches 0..3 run scoreboard players set #mv_choice kbt.settings 0
execute unless score #rb_choice kbt.settings matches 0..3 run scoreboard players operation #rb_choice kbt.settings = #bastion kbt.settings
execute unless score #rb_choice kbt.settings matches 0..3 run scoreboard players set #rb_choice kbt.settings 0
scoreboard players set #rb_shown_type kbt.settings -1
scoreboard players set #mv_shown_type kbt.settings -1
execute unless score #gold kbt.settings matches 0..2 run scoreboard players set #gold kbt.settings 0
execute unless score #floor kbt.settings matches 0..3 run scoreboard players set #floor kbt.settings 0
execute unless score #hoglins kbt.settings matches 0..1 run scoreboard players set #hoglins kbt.settings 0
execute unless score #piglins kbt.settings matches 0..1 run scoreboard players set #piglins kbt.settings 0
execute unless score #blaze kbt.settings matches 0..5 run scoreboard players set #blaze kbt.settings 0
execute unless score #bridge_spawn kbt.settings matches 0..10 run scoreboard players set #bridge_spawn kbt.settings 0
execute unless score #treasure_spawn kbt.settings matches 0..7 run scoreboard players set #treasure_spawn kbt.settings 0
execute unless score #housing_spawn kbt.settings matches 0..7 run scoreboard players set #housing_spawn kbt.settings 0
execute unless score #stables_spawn kbt.settings matches 0..8 run scoreboard players set #stables_spawn kbt.settings 0
execute unless score #debug kbt.settings matches 0..1 run scoreboard players set #debug kbt.settings 0
execute unless score #natural_mobs kbt.settings matches 0..1 run scoreboard players set #natural_mobs kbt.settings 0
execute unless score #bridge_left kbt.settings matches 0..2 run scoreboard players set #bridge_left kbt.settings 2
execute unless score #bridge_right kbt.settings matches 0..2 run scoreboard players set #bridge_right kbt.settings 2
execute unless score #s_left_gap kbt.settings matches 0..2 run scoreboard players set #s_left_gap kbt.settings 2
execute unless score #s_right_gap kbt.settings matches 0..2 run scoreboard players set #s_right_gap kbt.settings 2
execute unless score #s_left_ramp kbt.settings matches 0..3 run scoreboard players set #s_left_ramp kbt.settings 3
execute unless score #s_mid_ramp kbt.settings matches 0..3 run scoreboard players set #s_mid_ramp kbt.settings 3
execute unless score #s_right_ramp kbt.settings matches 0..3 run scoreboard players set #s_right_ramp kbt.settings 3
execute unless score #t_center kbt.settings matches 0..4 run scoreboard players set #t_center kbt.settings 4
execute unless score #t_spawner kbt.settings matches 0..1 run scoreboard players set #t_spawner kbt.settings 0
execute unless score #h_left kbt.settings matches 0..3 run scoreboard players set #h_left kbt.settings 3
scoreboard objectives add kbt.blava dummy
execute unless score #bridge_lava kbt.settings matches 0..1 run scoreboard players set #bridge_lava kbt.settings 0
