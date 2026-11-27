scoreboard players set #rp_same kbt.settings 0
execute store success score #rp_same kbt.settings run execute if blocks ~48 ~ ~16 ~63 ~127 ~31 984 128 952 all
execute if score #rp_same kbt.settings matches 1 run scoreboard players set #rp_copy kbt.settings 1
execute unless score #rp_same kbt.settings matches 1 run function kbt:routes/practice/job/sections/load_25
