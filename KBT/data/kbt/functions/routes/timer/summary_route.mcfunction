execute store result storage kbt:route_timer last_run.summary.has_previous byte 1 run scoreboard players get #rt_found kbt.settings
scoreboard players set #rt_summary_pb kbt.settings 0
execute if score #rt_found kbt.settings matches 1 run scoreboard players operation #rt_summary_pb kbt.settings = #rt_best kbt.settings
execute if score #rt_new_pb kbt.settings matches 1 run scoreboard players operation #rt_summary_pb kbt.settings = #rt_ticks kbt.settings
execute store result storage kbt:route_timer last_run.summary.pb_ticks int 1 run scoreboard players get #rt_summary_pb kbt.settings
execute if score #rt_summary_pb kbt.settings matches 1.. run function kbt:routes/timer/summary_pb
execute if score #rt_summary_pb kbt.settings matches 0 run tellraw @s {"text":"PB: --:--.---","color":"gray"}
execute if score #rt_found kbt.settings matches 1 run function kbt:routes/timer/summary_delta
execute if score #rt_found kbt.settings matches 0 run tellraw @s {"text":"Difference: -- (no previous PB)","color":"gray"}
