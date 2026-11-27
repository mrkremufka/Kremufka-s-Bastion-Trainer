scoreboard players set #ph_recorded kbt.settings 1
function kbt:routes/practice/phase/stats/load
data modify storage kbt:phase_stats completed set value {previous_best:2147483647}
data modify storage kbt:phase_stats completed.previous_best set from storage kbt:phase_stats record.best
execute store result storage kbt:phase_stats record.last int 1 run scoreboard players get #ph_ticks kbt.settings
execute store result score #ph_best kbt.settings run data get storage kbt:phase_stats record.best
execute if score #ph_ticks kbt.settings < #ph_best kbt.settings store result storage kbt:phase_stats record.best int 1 run scoreboard players get #ph_ticks kbt.settings
data modify storage kbt:phase_stats sample set value {ticks:0}
execute store result storage kbt:phase_stats sample.ticks int 1 run scoreboard players get #ph_ticks kbt.settings
data modify storage kbt:phase_stats record.recent append from storage kbt:phase_stats sample
execute if data storage kbt:phase_stats record.recent[10] run data remove storage kbt:phase_stats record.recent[0]
data modify storage kbt:phase_stats kept append from storage kbt:phase_stats record
data modify storage kbt:phase_bests records set from storage kbt:phase_stats kept
execute unless score #rp_phase_times kbt.settings matches 0 run function kbt:routes/practice/phase/stats/render
