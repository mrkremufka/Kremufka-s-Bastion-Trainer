execute positioned -997.5 129 1004.5 if block ~ ~ ~ minecraft:chest[type=single] unless entity @e[type=minecraft:armor_stand,tag=kbt.rp_settings_chest,distance=..0.1] run function kbt:routes/settings/bind_here
execute as @e[type=minecraft:armor_stand,tag=kbt.rp_settings_chest] at @s if entity @a[distance=..8] run function kbt:routes/settings/check
