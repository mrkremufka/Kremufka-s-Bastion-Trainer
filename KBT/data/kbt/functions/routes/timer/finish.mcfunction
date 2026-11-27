scoreboard players set #rt_phase_summary kbt.settings 0
scoreboard players set #ph_summary_new_pb kbt.settings 0
scoreboard players set #rt_finished kbt.settings 0
scoreboard players set #rt_new_pb kbt.settings 0
execute unless score #rp_no_time kbt.settings matches 1 if score #rp_active kbt.settings matches 1 if score #rp_remaining kbt.settings matches 0 if score #rt_state kbt.settings matches 2 if score #rt_ticks kbt.settings matches 1.. run function kbt:routes/timer/finish_valid
execute unless score #rp_no_time kbt.settings matches 1 unless score #rt_finished kbt.settings matches 1 run tellraw @s {"text":"No timed result: the route timer was not running","color":"gray"}
execute if score #rp_no_time kbt.settings matches 1 run tellraw @s {"text":"Practice completed No time or result saved because gamemode was changed","color":"yellow"}
scoreboard players set #rt_state kbt.settings 0
