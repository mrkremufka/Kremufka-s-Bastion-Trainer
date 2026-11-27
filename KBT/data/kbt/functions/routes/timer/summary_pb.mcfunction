scoreboard players operation #rt_display kbt.settings = #rt_summary_pb kbt.settings
function kbt:routes/timer/format
tellraw @s [{"text":"PB: ","color":"gold"},{"storage":"kbt:route_timer","nbt":"display.pad_min"},{"score":{"objective":"kbt.settings","name":"#rt_minutes"}},{"text":":"},{"storage":"kbt:route_timer","nbt":"display.pad_sec"},{"score":{"objective":"kbt.settings","name":"#rt_seconds"}},{"text":""},{"storage":"kbt:route_timer","nbt":"display.pad_ms"},{"score":{"objective":"kbt.settings","name":"#rt_millis"}}]
