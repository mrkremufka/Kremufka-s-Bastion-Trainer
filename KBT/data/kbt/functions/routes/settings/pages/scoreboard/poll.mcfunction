execute unless score @s kbt.rp_dstg = #rp_display_stage kbt.settings run function kbt:routes/settings/render
execute unless score @s kbt.rp_dphs = #rp_display_phase kbt.settings run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"rp_scoreboard_title",kbt_layout:3b}}] run function kbt:routes/settings/render
function kbt:settings/info/poll
execute unless data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:paper",tag:{kbt_menu:1b,kbt_action:"rp_display_stage"}}] run function kbt:routes/settings/cycle_display_stage
execute unless data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:clock",tag:{kbt_menu:1b,kbt_action:"rp_display_phase"}}] run function kbt:routes/settings/cycle_display_phase
function kbt:routes/settings/pages/poll_navigation
