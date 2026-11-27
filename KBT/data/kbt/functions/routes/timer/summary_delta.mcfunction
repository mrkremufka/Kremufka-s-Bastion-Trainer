execute store result storage kbt:route_timer last_run.summary.previous_pb_ticks int 1 run scoreboard players get #rt_best kbt.settings
scoreboard players operation #rt_delta kbt.settings = #rt_ticks kbt.settings
scoreboard players operation #rt_delta kbt.settings -= #rt_best kbt.settings
execute store result storage kbt:route_timer last_run.summary.delta_ticks int 1 run scoreboard players get #rt_delta kbt.settings
scoreboard players operation #rt_display kbt.settings = #rt_delta kbt.settings
scoreboard players set #rt_negative kbt.settings -1
execute if score #rt_delta kbt.settings matches ..-1 run scoreboard players operation #rt_display kbt.settings *= #rt_negative kbt.settings
function kbt:routes/timer/format
execute if score #rt_delta kbt.settings matches ..-1 run tellraw @s [{"text":"vs previous PB: -","color":"green"},{"storage":"kbt:route_timer","nbt":"display.pad_min"},{"score":{"objective":"kbt.settings","name":"#rt_minutes"}},{"text":":"},{"storage":"kbt:route_timer","nbt":"display.pad_sec"},{"score":{"objective":"kbt.settings","name":"#rt_seconds"}},{"text":""},{"storage":"kbt:route_timer","nbt":"display.pad_ms"},{"score":{"objective":"kbt.settings","name":"#rt_millis"}}]
execute if score #rt_delta kbt.settings matches 1.. run tellraw @s [{"text":"vs previous PB: +","color":"red"},{"storage":"kbt:route_timer","nbt":"display.pad_min"},{"score":{"objective":"kbt.settings","name":"#rt_minutes"}},{"text":":"},{"storage":"kbt:route_timer","nbt":"display.pad_sec"},{"score":{"objective":"kbt.settings","name":"#rt_seconds"}},{"text":""},{"storage":"kbt:route_timer","nbt":"display.pad_ms"},{"score":{"objective":"kbt.settings","name":"#rt_millis"}}]
execute if score #rt_delta kbt.settings matches 0 run tellraw @s {"text":"vs previous PB: 00:00.000 (equal)","color":"gray"}
