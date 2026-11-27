execute unless score @s kbt.page matches 0..5 run scoreboard players set @s kbt.page 0
execute if score @s kbt.page matches 4 unless score #gp_bastion kbt.settings matches 3 run scoreboard players set @s kbt.page 1
execute if score @s kbt.page matches 0 run function kbt:settings/pages/main/render
execute if score @s kbt.page matches 1 run function kbt:settings/pages/bastion/render

execute if score @s kbt.page matches 2 run function kbt:settings/pages/debug/render
execute if score @s kbt.page matches 3 run function kbt:settings/pages/scoreboard/render
execute if score @s kbt.page matches 4 run function kbt:settings/pages/stables/render
execute if score @s kbt.page matches 5 run function kbt:settings/pages/mobs/render
