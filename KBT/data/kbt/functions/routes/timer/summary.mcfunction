scoreboard players operation #rt_display kbt.settings = #rt_ticks kbt.settings
function kbt:routes/timer/format
function kbt:routes/timer/result_message
data modify storage kbt:route_timer last_run.summary set value {ticks:0,pb_ticks:0,previous_pb_ticks:0,delta_ticks:0,has_previous:0b}
execute store result storage kbt:route_timer last_run.summary.ticks int 1 run scoreboard players get #rt_ticks kbt.settings
scoreboard players set #rt_phase_summary kbt.settings 0
scoreboard players set #ph_summary_new_pb kbt.settings 0
execute if score #ph_enabled kbt.settings matches 1 unless data storage kbt:route_practice route{mode:"movement"} run scoreboard players set #rt_phase_summary kbt.settings 1
execute if score #rt_phase_summary kbt.settings matches 1 run function kbt:routes/timer/summary_phase
execute unless score #rt_phase_summary kbt.settings matches 1 run function kbt:routes/timer/summary_route
scoreboard players operation #rt_display kbt.settings = #rt_ticks kbt.settings
function kbt:routes/timer/format
