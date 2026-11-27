execute unless score @s kbt.it_layout matches 5 run function kbt:settings/render
execute unless score @s kbt.glow = #piglin_glow kbt.settings run function kbt:settings/render
execute unless score @s kbt.hglow = #hoglin_glow kbt.settings run function kbt:settings/render
execute unless score @s kbt.debug = #debug kbt.settings run function kbt:settings/render
execute unless data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:name_tag",tag:{kbt_menu:1b,kbt_action:"id_piglins"}}] run function kbt:settings/cycle_debug
execute unless data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:redstone",tag:{kbt_menu:1b,kbt_action:"debug_title"}}] run function kbt:settings/render
execute if score @s kbt.page matches 2 unless data block ~ ~ ~ Items[{Slot:9b,tag:{kbt_menu:1b,kbt_action:"previous"}}] run function kbt:settings/pages/previous
execute if score @s kbt.page matches 2 unless data block ~ ~ ~ Items[{Slot:17b,tag:{kbt_menu:1b,kbt_action:"next"}}] run function kbt:settings/pages/next
execute if score @s kbt.page matches 2 unless data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:glowstone_dust",tag:{kbt_menu:1b,kbt_action:"piglin_glow"}}] run function kbt:settings/cycle_piglin_glow
execute if score @s kbt.page matches 2 unless data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:glowstone_dust",tag:{kbt_menu:1b,kbt_action:"hoglin_glow"}}] run function kbt:settings/cycle_hoglin_glow
execute if score @s kbt.page matches 2 unless data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:piglin_spawn_egg",tag:{kbt_menu:1b,kbt_action:"piglin_icon"}}] run function kbt:settings/render
execute if score @s kbt.page matches 2 unless data block ~ ~ ~ Items[{Slot:23b,id:"minecraft:hoglin_spawn_egg",tag:{kbt_menu:1b,kbt_action:"hoglin_icon"}}] run function kbt:settings/render
