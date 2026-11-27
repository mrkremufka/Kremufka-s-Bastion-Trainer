data remove storage kbt:phase_stats completed
scoreboard players set #ph_ticks kbt.settings 0
scoreboard players set #ph_recorded kbt.settings 0
scoreboard players set #ph_valid kbt.settings 1
scoreboard players set #ph_enabled kbt.settings 0
execute unless data storage kbt:route_practice route{mode:"movement"} run function kbt:routes/practice/phase/stats/key
execute if score #ph_enabled kbt.settings matches 1 run function kbt:routes/practice/phase/loop/menu
