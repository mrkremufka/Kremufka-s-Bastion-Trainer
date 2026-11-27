execute unless score @s kbt.rp_page matches 0..2 run scoreboard players set @s kbt.rp_page 0
execute if score @s kbt.rp_page matches 0 run function kbt:routes/settings/pages/main/render
execute if score @s kbt.rp_page matches 1 run function kbt:routes/settings/pages/scoreboard/render
execute if score @s kbt.rp_page matches 2 run function kbt:routes/settings/pages/sound/render
scoreboard players operation @s kbt.rp_view = @s kbt.rp_page
scoreboard players set @s kbt.rp_layout 8
