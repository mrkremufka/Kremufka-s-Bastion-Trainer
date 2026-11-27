execute unless score #gen_precleaned kbt.settings matches 1 run kill @e[type=item]
execute if score #gen_precleaned kbt.settings matches 1 run kill @e[type=minecraft:item,x=936,y=128,z=936,dx=127,dy=127,dz=127]
gamerule doMobLoot true
gamerule doTileDrops true

function bastionbuilder:internal/utils/load_settings
execute at @e[type=area_effect_cloud, tag=chunk_aligned] at @e[type=area_effect_cloud, tag=bastion_chest, sort=nearest] positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed

execute if score bridge_lava_fix bastion.settings matches 1 if score bastion_type bastion.temp matches 1 run function bastionbuilder:internal/lava_fix/lava_fix
