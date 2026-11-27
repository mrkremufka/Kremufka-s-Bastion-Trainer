data modify storage kbt:route_bests records set value []
scoreboard players set b0 kbt.mv_pb 0
scoreboard players set b1 kbt.mv_pb 0
scoreboard players set b2 kbt.mv_pb 0
scoreboard players set b3 kbt.mv_pb 0
scoreboard players set #mv_pb_view kbt.settings -1
function kbt:route_browser/refresh
function kbt:movement/playlist/pb/init
tellraw @a {"text":"All route, trail and playlist PBs have been reset","color":"gold"}
