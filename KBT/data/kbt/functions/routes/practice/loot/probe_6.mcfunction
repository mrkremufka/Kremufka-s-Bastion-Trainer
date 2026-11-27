scoreboard players set #rl_count_6 kbt.settings 0
execute store result score #rl_count_6 kbt.settings run clone ~ ~ ~ ~7 ~7 ~7 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_6 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_7
execute if score #rl_count_6 kbt.settings matches 1.. positioned ~4 ~ ~ run function kbt:routes/practice/loot/probe_7
