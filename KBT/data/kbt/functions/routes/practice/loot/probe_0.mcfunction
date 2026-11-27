scoreboard players set #rl_count_0 kbt.settings 0
execute store result score #rl_count_0 kbt.settings run clone ~ ~ ~ ~15 ~127 ~15 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_0 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_1
execute if score #rl_count_0 kbt.settings matches 1.. positioned ~ ~64 ~ run function kbt:routes/practice/loot/probe_1
