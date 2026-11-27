scoreboard players enable @s kbt.rp_action
function kbt:routes/practice/phase/stats/load
scoreboard players set #rt_phase_prev kbt.settings 2147483647
execute store result score #rt_phase_prev kbt.settings run data get storage kbt:phase_stats record.best
execute if score #ph_recorded kbt.settings matches 1 if data storage kbt:phase_stats completed.previous_best store result score #rt_phase_prev kbt.settings run data get storage kbt:phase_stats completed.previous_best
scoreboard players set #rt_phase_found kbt.settings 0
execute if score #rt_phase_prev kbt.settings matches 1..2147483646 run scoreboard players set #rt_phase_found kbt.settings 1
scoreboard players set #rt_summary_pb kbt.settings 0
execute store result score #rt_summary_pb kbt.settings run data get storage kbt:phase_stats record.best
execute unless score #rt_summary_pb kbt.settings matches 1..2147483646 run scoreboard players set #rt_summary_pb kbt.settings 0
execute if score #ph_recorded kbt.settings matches 1 if score #ph_ticks kbt.settings < #rt_phase_prev kbt.settings run scoreboard players set #ph_summary_new_pb kbt.settings 1
data modify storage kbt:route_timer last_run.summary.scope set value "phase"
execute store result storage kbt:route_timer last_run.summary.phase int 1 run scoreboard players get #rp_phase kbt.settings
execute store result storage kbt:route_timer last_run.summary.phase_ticks int 1 run scoreboard players get #ph_ticks kbt.settings
execute store result storage kbt:route_timer last_run.summary.has_previous byte 1 run scoreboard players get #rt_phase_found kbt.settings
execute store result storage kbt:route_timer last_run.summary.pb_ticks int 1 run scoreboard players get #rt_summary_pb kbt.settings
execute if score #rt_summary_pb kbt.settings matches 1.. run function kbt:routes/timer/summary_phase_pb
execute if score #rt_summary_pb kbt.settings matches 0 run tellraw @s {"text":"Last Phase PB: --:--.---","color":"gray"}
execute if score #rt_phase_found kbt.settings matches 1 run function kbt:routes/timer/summary_phase_delta
execute if score #rt_phase_found kbt.settings matches 0 run tellraw @s {"text":"Difference: -- (no previous phase PB)","color":"gray"}
