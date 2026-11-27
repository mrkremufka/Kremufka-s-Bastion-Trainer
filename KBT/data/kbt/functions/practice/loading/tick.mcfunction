function kbt:practice/loading/check_owner
execute if score #gp_loading kbt.settings matches 3 run scoreboard players add #gp_load_ticks kbt.settings 1
execute if score #gp_loading kbt.settings matches 3 run function kbt:practice/loading/progress
execute if score #gp_loading kbt.settings matches 3 if score #gp_load_ticks kbt.settings matches 601.. run tellraw @a[tag=kbt.gp_loading] {"text":"General Practice preparation timed out Try Start again","color":"red"}
execute if score #gp_loading kbt.settings matches 3 if score #gp_load_ticks kbt.settings matches 601.. run function kbt:practice/loading/cancel
execute if score #gp_loading kbt.settings matches 3 if score #lava_wait kbt.settings matches 0 unless score #lava_stage kbt.settings matches 3 run tellraw @a[tag=kbt.gp_loading] {"text":"Lava Fix was interrupted General Practice start cancelled","color":"yellow"}
execute if score #gp_loading kbt.settings matches 3 if score #lava_wait kbt.settings matches 0 unless score #lava_stage kbt.settings matches 3 run function kbt:practice/loading/cancel
execute if score #gp_loading kbt.settings matches 3 if score #lava_wait kbt.settings matches 0 if score #lava_stage kbt.settings matches 3 in minecraft:the_nether run function kbt:practice/loading/finish
execute if score #gp_loading kbt.settings matches 3 run schedule function kbt:practice/loading/tick 1t replace
