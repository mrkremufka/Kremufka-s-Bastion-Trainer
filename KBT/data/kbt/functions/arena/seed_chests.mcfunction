execute positioned 1000 128 1000 as @e[type=minecraft:area_effect_cloud,tag=bastion_chest,sort=nearest] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
kill @e[type=minecraft:area_effect_cloud,tag=bastion_chest]
