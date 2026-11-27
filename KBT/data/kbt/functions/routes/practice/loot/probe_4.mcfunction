scoreboard players set #rl_count_4 kbt.settings 0
execute store result score #rl_count_4 kbt.settings run clone ~ ~ ~ ~7 ~15 ~15 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_4 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_5
execute if score #rl_count_4 kbt.settings matches 1.. positioned ~ ~8 ~ run function kbt:routes/practice/loot/probe_5
