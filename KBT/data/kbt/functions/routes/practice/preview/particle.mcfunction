execute if score @s kbt.rp_type matches 1 run particle minecraft:dust 0.2 1 0.2 1.15 ~ ~0.2 ~ 0.1 0.1 0.1 0 4 force @a[tag=kbt.rp_runner]
execute if score @s kbt.rp_type matches 2 run function kbt:routes/practice/preview/place_outline
execute if score @s kbt.rp_type matches 3 run function kbt:routes/practice/preview/gold_outline
execute if score @s kbt.rp_type matches 4 run function kbt:routes/practice/preview/break_outline
execute if score @s kbt.rp_type matches 5 run particle minecraft:happy_villager ~ ~0.2 ~ 0.15 0.15 0.15 0 6 force @a[tag=kbt.rp_runner]
execute if score @s kbt.rp_type matches 6 run particle minecraft:dust 0.2 0.9 1 1.15 ~ ~0.65 ~ 0.1 0.05 0.1 0 4 force @a[tag=kbt.rp_runner]
execute if score @s kbt.rp_type matches 7 run particle minecraft:end_rod ~ ~0.3 ~ 0.15 0.2 0.15 0 6 force @a[tag=kbt.rp_runner]
execute if score @s kbt.rp_type matches 10 run function kbt:routes/practice/preview/optional_place_outline
execute if score @s kbt.rp_type matches 11 run function kbt:routes/practice/preview/optional_break_outline
execute if score @s kbt.rp_type matches 21 run function kbt:routes/practice/preview/throw_gold_x
