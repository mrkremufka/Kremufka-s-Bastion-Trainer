execute unless score @s kbt.rp_locator = #rp_locator kbt.settings run function kbt:routes/settings/render
execute unless score @s kbt.rp_piglins = #rp_piglins kbt.settings run function kbt:routes/settings/render
execute unless score @s kbt.rp_hoglins = #rp_hoglins kbt.settings run function kbt:routes/settings/render
execute unless score @s kbt.rp_steps = #rp_steps_left kbt.settings run function kbt:routes/settings/render
execute unless score @s kbt.rp_ptimes = #rp_phase_times kbt.settings run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:piglin_spawn_egg",tag:{kbt_menu:1b,kbt_action:"rp_piglins"}}] run function kbt:routes/settings/cycle_piglins
execute unless data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:hoglin_spawn_egg",tag:{kbt_menu:1b,kbt_action:"rp_hoglins"}}] run function kbt:routes/settings/cycle_hoglins
execute unless data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:paper",tag:{kbt_menu:1b,kbt_action:"rp_steps_left"}}] run function kbt:routes/settings/cycle_steps_left
execute unless data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:clock",tag:{kbt_menu:1b,kbt_action:"rp_phase_times"}}] run function kbt:routes/settings/cycle_phase_times
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"rp_title"}}] run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:compass",tag:{kbt_menu:1b,kbt_action:"rp_locator"}}] run function kbt:routes/settings/cycle_locator
function kbt:routes/settings/pages/poll_navigation
