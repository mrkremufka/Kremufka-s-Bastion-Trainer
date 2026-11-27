function kbt:routes/timer/split_valid
execute store result storage kbt:route_timer session.ticks int 1 run scoreboard players get #rt_ticks kbt.settings
execute store result storage kbt:route_timer session.eligible byte 1 run scoreboard players get #rt_eligible kbt.settings
data modify storage kbt:route_timer session.status set value "finished"
data modify storage kbt:route_timer last_run set from storage kbt:route_timer session
scoreboard players set #rt_new_pb kbt.settings 0
function kbt:routes/timer/pb/save
function kbt:routes/timer/summary
execute unless score #rt_phase_summary kbt.settings matches 1 if score #rt_new_pb kbt.settings matches 1 unless data storage kbt:route_practice route{mode:"movement"} run tellraw @s {"text":"NEW PERSONAL BEST for this route!","color":"gold","bold":true}
execute if score #rt_new_pb kbt.settings matches 1 if data storage kbt:route_practice route{mode:"movement"} run tellraw @s {"text":"NEW PERSONAL BEST for this trail!","color":"gold","bold":true}
execute if score #rt_phase_summary kbt.settings matches 1 if score #ph_summary_new_pb kbt.settings matches 1 run tellraw @s [{"text":"NEW PERSONAL BEST for Phase ","color":"gold","bold":true},{"score":{"name":"#rp_phase","objective":"kbt.settings"},"color":"gold","bold":true},{"text":"!","color":"gold","bold":true}]
execute unless score #rt_eligible kbt.settings matches 1 unless score #rt_phase_summary kbt.settings matches 1 run tellraw @s {"text":"Unranked attempt; PB unchanged","color":"yellow"}
scoreboard players set #rt_finished kbt.settings 1
