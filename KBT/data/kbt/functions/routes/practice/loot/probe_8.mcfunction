scoreboard players set #rl_count_8 kbt.settings 0
execute store result score #rl_count_8 kbt.settings run clone ~ ~ ~ ~3 ~3 ~7 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_8 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_9
execute if score #rl_count_8 kbt.settings matches 1.. positioned ~ ~ ~4 run function kbt:routes/practice/loot/probe_9
