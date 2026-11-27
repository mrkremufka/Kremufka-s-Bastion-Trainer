function bastionbuilder:internal/utils/save_settings
gamerule doMobLoot false
gamerule doTileDrops false
execute unless score #gen_precleaned kbt.settings matches 1 run function bastionbuilder:internal/cleanup_mobs
kill @e[type=area_effect_cloud, tag=bastion_chest]
kill @e[type=area_effect_cloud, tag=lava_fix_bridge]
