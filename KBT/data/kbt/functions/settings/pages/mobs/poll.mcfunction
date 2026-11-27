execute unless score @s kbt.gp_layout matches 2 run function kbt:settings/render
execute unless score @s kbt.hoglins = #hoglins kbt.settings run function kbt:settings/render
execute unless score @s kbt.piglins = #piglins kbt.settings run function kbt:settings/render
execute unless score @s kbt.natural = #natural_mobs kbt.settings run function kbt:settings/render
execute unless data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:cooked_porkchop",tag:{kbt_menu:1b,kbt_action:"hoglins"}}] run function kbt:settings/cycle_hoglins
execute unless data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:piglin_spawn_egg",tag:{kbt_menu:1b,kbt_action:"piglins"}}] run function kbt:settings/cycle_piglins
execute unless data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:rotten_flesh",tag:{kbt_menu:1b,kbt_action:"natural_mobs"}}] run function kbt:settings/cycle_natural_mobs
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"title"}}] run function kbt:settings/render
execute if score @s kbt.page matches 5 unless data block ~ ~ ~ Items[{Slot:9b,tag:{kbt_menu:1b,kbt_action:"previous"}}] run function kbt:settings/pages/previous
execute if score @s kbt.page matches 5 unless data block ~ ~ ~ Items[{Slot:17b,tag:{kbt_menu:1b,kbt_action:"next"}}] run function kbt:settings/pages/next
