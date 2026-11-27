scoreboard players set #rl_count_2 kbt.settings 0
execute store result score #rl_count_2 kbt.settings run clone ~ ~ ~ ~15 ~31 ~15 ~ ~ ~ filtered #kbt:route_loot_chests force
execute if score #rl_count_2 kbt.settings matches 1.. run function kbt:routes/practice/loot/probe_3
execute if score #rl_count_2 kbt.settings matches 1.. positioned ~ ~16 ~ run function kbt:routes/practice/loot/probe_3
