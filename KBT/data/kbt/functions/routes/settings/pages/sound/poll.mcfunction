execute unless score @s kbt.rp_msgsnd = #rp_message_sound kbt.settings run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:writable_book",tag:{kbt_menu:1b,kbt_action:"rp_message_sound"}}] run function kbt:routes/settings/cycle_message_sound
execute unless score @s kbt.rp_phsound = #rp_phase_sound kbt.settings run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:chorus_plant",tag:{kbt_menu:1b,kbt_action:"rp_phase_sound"}}] run function kbt:routes/settings/cycle_phase_sound
execute unless score @s kbt.rp_sound = #rp_checkpoint_sound kbt.settings run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"rp_sound_title"}}] run function kbt:routes/settings/render
execute unless data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:emerald",tag:{kbt_menu:1b,kbt_action:"rp_checkpoint_sound"}}] run function kbt:routes/settings/cycle_checkpoint_sound
function kbt:routes/settings/pages/poll_navigation
