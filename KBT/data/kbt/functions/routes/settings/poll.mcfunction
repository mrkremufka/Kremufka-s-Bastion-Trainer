execute unless score @s kbt.rp_layout matches 8 run function kbt:routes/settings/render
execute unless score @s kbt.rp_page matches 0..2 run function kbt:routes/settings/render
execute unless score @s kbt.rp_view = @s kbt.rp_page run function kbt:routes/settings/render
scoreboard players operation #rp_settings_page kbt.settings = @s kbt.rp_page
execute if score #rp_settings_page kbt.settings matches 0 run function kbt:routes/settings/pages/main/poll
execute if score #rp_settings_page kbt.settings matches 1 run function kbt:routes/settings/pages/scoreboard/poll
execute if score #rp_settings_page kbt.settings matches 2 run function kbt:routes/settings/pages/sound/poll
