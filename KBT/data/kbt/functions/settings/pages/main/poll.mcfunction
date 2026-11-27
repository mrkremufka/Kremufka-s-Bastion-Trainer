execute unless score @s kbt.gp_layout matches 2 run function kbt:settings/render
execute unless score @s kbt.csrev = #cs_revision kbt.settings run function kbt:settings/render
execute if data block ~ ~ ~ Items[{Slot:15b,tag:{kbt_action:"spawn"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{kbt_action:"spawn",kbt_spawn_layout:1b}}] unless score #gp_bastion kbt.settings matches 4 run function kbt:settings/render
execute if data block ~ ~ ~ Items[{Slot:13b,tag:{kbt_menu:1b,kbt_action:"floor"}}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{kbt_menu:1b,kbt_action:"floor",kbt_terrain:1b,kbt_layout:1b}}] run function kbt:settings/render
execute unless score @s kbt.menu = #gp_bastion kbt.settings run function kbt:settings/render
execute unless score @s kbt.gold = #gold kbt.settings run function kbt:settings/render
execute unless score @s kbt.floor = #floor kbt.settings run function kbt:settings/render
execute unless score @s kbt.blaze = #blaze kbt.settings run function kbt:settings/render
execute unless score @s kbt.spawn = #bridge_spawn kbt.settings run function kbt:settings/render
execute unless score @s kbt.tspawn = #treasure_spawn kbt.settings run function kbt:settings/render
execute unless score @s kbt.hspawn = #housing_spawn kbt.settings run function kbt:settings/render
execute unless score @s kbt.sspawn = #stables_spawn kbt.settings run function kbt:settings/render
execute unless data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:chiseled_polished_blackstone",tag:{kbt_menu:1b,kbt_action:"type"}}] run function kbt:settings/cycle_type
execute unless data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gold_block",tag:{kbt_menu:1b,kbt_action:"gold"}}] run function kbt:settings/cycle_gold
execute unless data block ~ ~ ~ Items[{Slot:13b,tag:{kbt_menu:1b,kbt_action:"floor"}}] run function kbt:settings/cycle_floor
execute unless data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:spawner",tag:{kbt_menu:1b,kbt_action:"blaze"}}] run function kbt:settings/cycle_blaze
execute unless data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:compass",tag:{kbt_menu:1b,kbt_action:"spawn"}}] run function kbt:settings/cycle_spawn
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"title"}}] run function kbt:settings/render
execute if score @s kbt.page matches 0 unless data block ~ ~ ~ Items[{Slot:9b,tag:{kbt_menu:1b,kbt_action:"previous"}}] run function kbt:settings/pages/previous
execute if score @s kbt.page matches 0 unless data block ~ ~ ~ Items[{Slot:17b,tag:{kbt_menu:1b,kbt_action:"next"}}] run function kbt:settings/pages/next
execute if score @s kbt.page matches 0 unless data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:polished_blackstone_brick_stairs",tag:{kbt_menu:1b,kbt_action:"bastion_page"}}] run function kbt:settings/pages/bastion/open
function kbt:settings/custom_spawn/current
execute if score @s kbt.page matches 0 if score #cs_enabled kbt.settings matches 1 unless data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:ender_pearl",tag:{kbt_menu:1b,kbt_action:"create_custom_spawn"}}] run function kbt:practice/spawn/custom/create/click
execute if score @s kbt.page matches 0 if score #cs_enabled kbt.settings matches 1 unless data block ~ ~ ~ Items[{Slot:24b,id:"minecraft:red_bed",tag:{kbt_menu:1b,kbt_action:"custom_spawn"}}] run function kbt:settings/custom_spawn/cycle
