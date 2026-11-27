scoreboard players set #rt_phase_summary kbt.settings 0
scoreboard players set #ph_summary_new_pb kbt.settings 0
scoreboard players set #rt_state kbt.settings 1
scoreboard players set #rt_ticks kbt.settings 0
scoreboard players set #rt_previous kbt.settings 0
scoreboard players set #rt_hud kbt.settings 0
scoreboard players set #rt_eligible kbt.settings 1
scoreboard players set #rt_new_pb kbt.settings 0
scoreboard players set #rt_finished kbt.settings 0
data modify storage kbt:route_timer session set value {route_id:0,ticks:0,splits:[],status:"armed",eligible:1b,definition:{}}
data modify storage kbt:route_timer session.route_id set from storage kbt:route_practice route.id
data modify storage kbt:route_identity input set from storage kbt:route_practice route
function kbt:routes/identity/build
data modify storage kbt:route_timer session.definition set from storage kbt:route_identity value
data modify storage kbt:route_timer display.status set value "MOVE TO START"
data modify storage kbt:route_timer display.status_separator set value ""
execute if score #rp_no_time kbt.settings matches 1 run function kbt:routes/practice/gamemode_unrank
function kbt:routes/timer/hud
