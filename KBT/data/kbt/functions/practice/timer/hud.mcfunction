scoreboard players set @s kbt.gp_hud 0
function kbt:practice/timer/format
title @s actionbar [{"text":"Time: ","color":"gold"},{"storage":"kbt:general_timer","nbt":"display.pad_min"},{"score":{"name":"#gp_minutes","objective":"kbt.settings"}},{"text":":"},{"storage":"kbt:general_timer","nbt":"display.pad_sec"},{"score":{"name":"#gp_seconds","objective":"kbt.settings"}},{"text":":"},{"storage":"kbt:general_timer","nbt":"display.pad_cs"},{"score":{"name":"#gp_centis","objective":"kbt.settings"}},{"nbt":"suffix","storage":"kbt:gold_display","interpret":true}]
