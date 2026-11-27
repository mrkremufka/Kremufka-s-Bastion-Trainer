scoreboard players set #rl_count_3 kbt.settings 0
execute store result score #rl_count_3 kbt.settings run clone ~ ~ ~ ~15 ~15 ~15 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_3 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_4
execute if score #rl_count_3 kbt.settings matches 1.. positioned ~8 ~ ~ run function kbt:routes/practice/loot/probe_4
