scoreboard players set max bastion.rng 100
function bastionbuilder:internal/utils/rng/new_int
scoreboard players operation units_lower bastion.temp = out bastion.rng
execute if score units_lower bastion.temp matches 1..10 run function kbt:arena/generator/lower/units/rot_0/group_0
execute if score units_lower bastion.temp matches 11..20 run function kbt:arena/generator/lower/units/rot_0/group_1
execute if score units_lower bastion.temp matches 21..30 run function kbt:arena/generator/lower/units/rot_0/group_2
execute if score units_lower bastion.temp matches 31..40 run function kbt:arena/generator/lower/units/rot_0/group_3
execute if score units_lower bastion.temp matches 41..50 run function kbt:arena/generator/lower/units/rot_0/group_4
execute if score units_lower bastion.temp matches 51..60 run function kbt:arena/generator/lower/units/rot_0/group_5
execute if score units_lower bastion.temp matches 61..70 run function kbt:arena/generator/lower/units/rot_0/group_6
execute if score units_lower bastion.temp matches 71..80 run function kbt:arena/generator/lower/units/rot_0/group_7
execute if score units_lower bastion.temp matches 81..90 run function kbt:arena/generator/lower/units/rot_0/group_8
execute if score units_lower bastion.temp matches 91..100 run function kbt:arena/generator/lower/units/rot_0/group_9
