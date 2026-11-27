data modify storage kbt:movement_playlist queue set from storage kbt:routes records
data modify storage kbt:movement_playlist pb_build set value {b0:[],b1:[],b2:[],b3:[]}
execute if data storage kbt:movement_playlist queue[0] run function kbt:movement/playlist/pb/scan
execute store success score #mv_pool_changed kbt.settings run data modify storage kbt:movement_playlist pb_pools.b0 set from storage kbt:movement_playlist pb_build.b0
execute if score #mv_pool_changed kbt.settings matches 1 run scoreboard players set b0 kbt.mv_pb 0
execute store success score #mv_pool_changed kbt.settings run data modify storage kbt:movement_playlist pb_pools.b1 set from storage kbt:movement_playlist pb_build.b1
execute if score #mv_pool_changed kbt.settings matches 1 run scoreboard players set b1 kbt.mv_pb 0
execute store success score #mv_pool_changed kbt.settings run data modify storage kbt:movement_playlist pb_pools.b2 set from storage kbt:movement_playlist pb_build.b2
execute if score #mv_pool_changed kbt.settings matches 1 run scoreboard players set b2 kbt.mv_pb 0
execute store success score #mv_pool_changed kbt.settings run data modify storage kbt:movement_playlist pb_pools.b3 set from storage kbt:movement_playlist pb_build.b3
execute if score #mv_pool_changed kbt.settings matches 1 run scoreboard players set b3 kbt.mv_pb 0
data remove storage kbt:movement_playlist pb_build
scoreboard players operation #mv_bastion kbt.settings = #mv_choice kbt.settings
scoreboard players set #mv_pb_view kbt.settings -1
