data modify storage kbt:route_timer display.locator set value '{"text":""}'
execute unless score #rp_locator kbt.settings matches 0 if score #rp_active kbt.settings matches 1 as @a[tag=kbt.rp_runner,limit=1] at @s run function kbt:routes/practice/locator/tick
scoreboard players set #rt_hud kbt.settings 0
scoreboard players operation #rt_display kbt.settings = #rt_ticks kbt.settings
execute if score #ph_enabled kbt.settings matches 1 unless data storage kbt:route_practice route{mode:"movement"} run scoreboard players operation #rt_display kbt.settings = #ph_ticks kbt.settings
execute if score #mv_playlist kbt.settings matches 1 run scoreboard players operation #rt_display kbt.settings = #mv_total kbt.settings
function kbt:routes/timer/format
execute unless score #rp_phase kbt.settings matches 1.. run scoreboard players set #rp_phase kbt.settings 1
data modify storage kbt:route_timer display.steps_part set value "{\"text\":\"\"}"
execute unless score #rp_steps_left kbt.settings matches 0 run data modify storage kbt:route_timer display.steps_part set value "[{\"text\":\" | \",\"color\":\"gray\"},{\"text\":\"Steps left: \",\"color\":\"aqua\"},{\"score\":{\"name\":\"#rp_remaining\",\"objective\":\"kbt.settings\"},\"color\":\"aqua\"}]"
execute unless score #mv_playlist kbt.settings matches 1 if score #rt_state kbt.settings matches 1 run title @a[tag=kbt.rp_runner] actionbar [{"text":"MOVE TO START","color":"aqua"},{"nbt":"suffix","storage":"kbt:gold_display","interpret":true}]
execute unless score #mv_playlist kbt.settings matches 1 if score #rt_state kbt.settings matches 2 run title @a[tag=kbt.rp_runner] actionbar [{"text":"Time ","color":"gold"},{"storage":"kbt:route_timer","nbt":"display.pad_min"},{"score":{"objective":"kbt.settings","name":"#rt_minutes"}},{"text":":"},{"storage":"kbt:route_timer","nbt":"display.pad_sec"},{"score":{"objective":"kbt.settings","name":"#rt_seconds"}},{"text":""},{"storage":"kbt:route_timer","nbt":"display.pad_ms"},{"score":{"objective":"kbt.settings","name":"#rt_millis"}},{"nbt":"display.locator","storage":"kbt:route_timer","interpret":true},{"nbt":"display.steps_part","storage":"kbt:route_timer","interpret":true},{"color":"gray","storage":"kbt:route_timer","nbt":"display.status_separator"},{"color":"red","storage":"kbt:route_timer","nbt":"display.status"},{"nbt":"suffix","storage":"kbt:gold_display","interpret":true}]

execute if score #mv_playlist kbt.settings matches 1 run function kbt:movement/playlist/hud
