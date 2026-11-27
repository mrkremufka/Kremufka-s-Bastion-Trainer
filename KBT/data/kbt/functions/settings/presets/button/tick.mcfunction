execute positioned 23.5 129 33.5 if entity @a[distance=..32] if block ~ ~ ~ minecraft:chest[type=single] if entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=..0.1] unless entity @e[type=minecraft:armor_stand,tag=kbt.gp_presets_button,distance=..3] run function kbt:settings/presets/button/create
execute positioned 23.5 129 33.5 if entity @a[distance=..32] if block ~ ~ ~ minecraft:chest[type=single] if entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=..0.1] unless entity @e[type=minecraft:pufferfish,tag=kbt.gp_presets_hitbox,distance=..3] run function kbt:settings/presets/button/create
execute positioned 23.5 129 33.5 unless block ~ ~ ~ minecraft:chest[type=single] run function kbt:settings/presets/button/clear
execute positioned 23.5 129 33.5 unless entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=..0.1] run function kbt:settings/presets/button/clear
execute if score #ui_clock kbt.settings matches 0 as @e[type=minecraft:pufferfish,tag=kbt.gp_presets_hitbox] run data merge entity @s {Air:300s,PuffState:0,Health:1024.0f,Motion:[0.0d,0.0d,0.0d]}
scoreboard players remove @a[scores={kbt.ps_cd=1..}] kbt.ps_cd 1
