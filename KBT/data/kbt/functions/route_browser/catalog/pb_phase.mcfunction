function kbt:route_browser/catalog/rank/read
scoreboard players set #rb_pb_candidate kbt.settings 0
execute if score #rank_found kbt.settings matches 1 if data storage kbt:route_rank record.best store result score #rb_pb_candidate kbt.settings run data get storage kbt:route_rank record.best
execute if score #rb_pb_candidate kbt.settings matches 1..2147483646 run scoreboard players operation #rb_pb_ticks kbt.settings = #rb_pb_candidate kbt.settings
execute if score #rb_pb_candidate kbt.settings matches 1..2147483646 run scoreboard players set #rb_pb_found kbt.settings 1
