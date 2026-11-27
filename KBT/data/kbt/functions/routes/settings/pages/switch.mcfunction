function kbt:settings/click
scoreboard players operation #rp_settings_nav kbt.settings = @s kbt.rp_page
scoreboard players set @s kbt.rp_page 0
execute if score #rp_settings_nav kbt.settings matches 0 run scoreboard players set @s kbt.rp_page 1
execute if score #rp_settings_nav kbt.settings matches 1 run scoreboard players set @s kbt.rp_page 2
function kbt:routes/settings/render
