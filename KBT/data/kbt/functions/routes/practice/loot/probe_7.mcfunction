scoreboard players set #rl_count_7 kbt.settings 0
execute store result score #rl_count_7 kbt.settings run clone ~ ~ ~ ~3 ~7 ~7 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_7 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_8
execute if score #rl_count_7 kbt.settings matches 1.. positioned ~ ~4 ~ run function kbt:routes/practice/loot/probe_8
