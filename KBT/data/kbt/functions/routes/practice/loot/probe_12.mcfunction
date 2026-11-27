scoreboard players set #rl_count_12 kbt.settings 0
execute store result score #rl_count_12 kbt.settings run clone ~ ~ ~ ~1 ~1 ~1 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_12 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_13
execute if score #rl_count_12 kbt.settings matches 1.. positioned ~1 ~ ~ run function kbt:routes/practice/loot/probe_13
