scoreboard players set #rp_same kbt.settings 0
execute store success score #rp_same kbt.settings run execute if blocks ~96 ~ ~32 ~111 ~127 ~47 1032 128 968 all
execute if score #rp_same kbt.settings matches 1 run scoreboard players set #rp_copy kbt.settings 1
execute unless score #rp_same kbt.settings matches 1 run function kbt:routes/practice/job/sections/load_50
