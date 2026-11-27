data modify storage kbt:pb_backup reset_20261126 set value {}
data modify storage kbt:pb_backup reset_20261126.route_bests set from storage kbt:route_bests records
data modify storage kbt:pb_backup reset_20261126.phase_bests set from storage kbt:phase_bests records
data modify storage kbt:pb_backup reset_20261126.last_run set from storage kbt:route_timer last_run
data modify storage kbt:route_bests records set value []
data modify storage kbt:phase_bests records set value []
data remove storage kbt:route_timer last_run
data remove storage kbt:route_timer pb_record
data remove storage kbt:route_timer pb_result
data remove storage kbt:route_timer pb_queue
data remove storage kbt:phase_stats record
data remove storage kbt:phase_stats completed
data remove storage kbt:phase_stats display
data remove storage kbt:phase_stats queue
data remove storage kbt:phase_stats kept
scoreboard players set #rt_best kbt.settings 0
scoreboard players set #rt_found kbt.settings 0
scoreboard players set #rt_new_pb kbt.settings 0
scoreboard players set #rt_summary_pb kbt.settings 0
scoreboard players set #ph_best kbt.settings 0
scoreboard players set #ph_summary_new_pb kbt.settings 0
scoreboard players set #rb_pb_dirty kbt.settings 1
function kbt:route_browser/refresh
data modify storage kbt:maintenance pb_reset_20261126 set value {done:1b}
tellraw @a {"text":"Route and phase PBs/history reset New records will be kept","color":"gold"}
