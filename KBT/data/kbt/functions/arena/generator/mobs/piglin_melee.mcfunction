scoreboard players set max bastion.rng 7
function bastionbuilder:internal/utils/rng/new_int
execute if score out bastion.rng matches 1 unless score #gp_piglins_off kbt.settings matches 1 run function bastionbuilder:internal/foundations/mobs/melee_piglin_always
execute if score out bastion.rng matches 2..6 unless score #gp_piglins_off kbt.settings matches 1 run function bastionbuilder:internal/foundations/mobs/melee_piglin
execute if score out bastion.rng matches 7 unless score #gp_piglins_off kbt.settings matches 1 run function bastionbuilder:internal/foundations/mobs/sword_piglin
fill ~ ~ ~ ~ ~1 ~ air
