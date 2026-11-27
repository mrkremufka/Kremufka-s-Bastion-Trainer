scoreboard players set #rl_count_11 kbt.settings 0
execute store result score #rl_count_11 kbt.settings run clone ~ ~ ~ ~1 ~1 ~3 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_11 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_12
execute if score #rl_count_11 kbt.settings matches 1.. positioned ~ ~ ~2 run function kbt:routes/practice/loot/probe_12
