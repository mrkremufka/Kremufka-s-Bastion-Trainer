scoreboard players set max bastion.rng 30
function bastionbuilder:internal/utils/rng/new_int
execute if score out bastion.rng matches 1 run function bastionbuilder:internal/foundations/mobs/baby_hoglin
execute if score out bastion.rng matches 2..20 run function bastionbuilder:internal/foundations/mobs/hoglin
execute if score out bastion.rng matches 1 run fill ~ ~ ~ ~1 ~2 ~-1 air
execute if score out bastion.rng matches 2 run fill ~ ~ ~ ~1 ~2 ~1 air
execute if score out bastion.rng matches 3 run fill ~ ~ ~ ~-1 ~2 ~1 air
execute if score out bastion.rng matches 4 run fill ~ ~ ~ ~-1 ~2 ~-1 air
