execute if score @s kbt.rc_type matches 1 run particle minecraft:dust 0.2 1 0.2 1 ~ ~0.2 ~ 0.1 0.1 0.1 0 2 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 2 run function kbt:routes/creator/preview/place_outline
execute if score @s kbt.rc_type matches 3 run function kbt:routes/creator/preview/gold_outline
execute if score @s kbt.rc_type matches 4 run function kbt:routes/creator/preview/break_outline
execute if score @s kbt.rc_type matches 5 run particle minecraft:happy_villager ~ ~0.2 ~ 0.15 0.15 0.15 0 3 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 6 run particle minecraft:dust 0.2 0.9 1 1 ~ ~0.65 ~ 0.1 0.05 0.1 0 2 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 7 run particle minecraft:end_rod ~ ~0.3 ~ 0.15 0.2 0.15 0 3 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 10 run function kbt:routes/creator/preview/optional_place_outline
execute if score @s kbt.rc_type matches 11 run function kbt:routes/creator/preview/optional_break_outline
execute if score @s kbt.rc_type matches 12 run particle minecraft:dust 1 0.4 1 1 ~ ~0.25 ~ 0.4 0.15 0.4 0 4 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 13 run particle minecraft:end_rod ~ ~1.6 ~ 0.1 0.1 0.1 0 1 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 15 run particle minecraft:dust 1 0.2 0.1 1 ~ ~0.25 ~ 0.4 0.15 0.4 0 4 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 17 run particle minecraft:dust 1 0.2 0.1 1 ~ ~0.25 ~ 0.4 0.15 0.4 0 4 force @a[scores={kbt.creator=1}]
execute if score @s kbt.rc_type matches 21 run function kbt:routes/creator/preview/throw_gold_x
