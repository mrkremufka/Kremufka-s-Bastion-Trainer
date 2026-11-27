scoreboard players set #rl_count_10 kbt.settings 0
execute store result score #rl_count_10 kbt.settings run clone ~ ~ ~ ~1 ~3 ~3 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_10 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_11
execute if score #rl_count_10 kbt.settings matches 1.. positioned ~ ~2 ~ run function kbt:routes/practice/loot/probe_11
