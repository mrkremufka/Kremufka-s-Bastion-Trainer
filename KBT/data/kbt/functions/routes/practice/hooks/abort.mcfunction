data modify storage kbt:route_practice event set value {kind:"abort",stage:0}
data modify storage kbt:route_practice event.route_id set from storage kbt:route_practice route.id
execute store result storage kbt:route_practice event.stage int 1 run scoreboard players get #rp_stage kbt.settings
function #kbt:routes/on_abort
