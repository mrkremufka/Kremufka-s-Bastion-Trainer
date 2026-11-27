scoreboard players set #ss_hud kbt.settings 0
scoreboard players operation #rt_display kbt.settings = #rt_ticks kbt.settings
execute if data storage kbt:savestate current{mode:0} run scoreboard players operation #rt_display kbt.settings = @s kbt.gp_time
function kbt:routes/timer/format
title @s actionbar [{"text":"PAUSED ","color":"aqua"},{"storage":"kbt:route_timer","nbt":"display.pad_min","color":"gold"},{"score":{"objective":"kbt.settings","name":"#rt_minutes"},"color":"gold"},{"text":":","color":"gold"},{"storage":"kbt:route_timer","nbt":"display.pad_sec","color":"gold"},{"score":{"objective":"kbt.settings","name":"#rt_seconds"},"color":"gold"},{"text":"","color":"gold"},{"storage":"kbt:route_timer","nbt":"display.pad_ms","color":"gold"},{"score":{"objective":"kbt.settings","name":"#rt_millis"},"color":"gold"},{"text":" | MOVE TO RESUME","color":"aqua"}]
