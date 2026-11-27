execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{kbt_menu:1b,kbt_action:"stables_title",kbt_layout:2b}}] run function kbt:settings/render
execute unless score @s kbt.specific = #gp_bastion kbt.settings run function kbt:settings/render
execute unless score @s kbt.sgg = #s_good_gap kbt.settings run function kbt:settings/render
execute unless score @s kbt.stc = #s_triple_chest kbt.settings run function kbt:settings/render
execute unless score @s kbt.slc = #s_lantern_chest kbt.settings run function kbt:settings/render
execute unless score @s kbt.ssc = #s_single_chest kbt.settings run function kbt:settings/render
execute unless score @s kbt.sbg = #s_bad_gap kbt.settings run function kbt:settings/render
execute if score @s kbt.page matches 4 if score #gp_bastion kbt.settings matches 3 unless data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:cracked_polished_blackstone_bricks",Count:1b,tag:{kbt_menu:1b,kbt_action:"s_good_gap"}}] run function kbt:settings/cycle_s_good_gap
execute if score @s kbt.page matches 4 if score #gp_bastion kbt.settings matches 3 unless data block ~ ~ ~ Items[{Slot:13b,id:"minecraft:chest",Count:3b,tag:{kbt_menu:1b,kbt_action:"s_triple_chest"}}] run function kbt:settings/cycle_s_triple_chest
execute if score @s kbt.page matches 4 if score #gp_bastion kbt.settings matches 3 unless data block ~ ~ ~ Items[{Slot:14b,id:"minecraft:lantern",Count:1b,tag:{kbt_menu:1b,kbt_action:"s_lantern_chest"}}] run function kbt:settings/cycle_s_lantern_chest
execute if score @s kbt.page matches 4 if score #gp_bastion kbt.settings matches 3 unless data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:chest",Count:1b,tag:{kbt_menu:1b,kbt_action:"s_single_chest"}}] run function kbt:settings/cycle_s_single_chest
execute if score @s kbt.page matches 4 if score #gp_bastion kbt.settings matches 3 unless data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:polished_blackstone_bricks",Count:1b,tag:{kbt_menu:1b,kbt_action:"s_bad_gap"}}] run function kbt:settings/cycle_s_bad_gap
execute if score @s kbt.page matches 4 unless data block ~ ~ ~ Items[{Slot:22b,id:"minecraft:gilded_blackstone",tag:{kbt_menu:1b,kbt_action:"back"}}] run function kbt:settings/pages/main/open
execute if score @s kbt.page matches 4 unless data block ~ ~ ~ Items[{Slot:9b,tag:{kbt_menu:1b,kbt_action:"previous"}}] run function kbt:settings/pages/previous
execute if score @s kbt.page matches 4 unless data block ~ ~ ~ Items[{Slot:17b,tag:{kbt_menu:1b,kbt_action:"next"}}] run function kbt:settings/pages/next
