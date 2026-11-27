function kbt:settings/click
scoreboard players operation #settings_nav_page kbt.settings = @s kbt.page
scoreboard players set @s kbt.page 0
execute unless score #settings_nav_page kbt.settings matches 2..3 run scoreboard players set @s kbt.page 2
execute if score #settings_nav_page kbt.settings matches 0 run scoreboard players set @s kbt.page 5
execute if score #settings_nav_page kbt.settings matches 2 run scoreboard players set @s kbt.page 3
execute if score #settings_nav_page kbt.settings matches 1 if score #gp_bastion kbt.settings matches 3 run scoreboard players set @s kbt.page 4
execute if score #settings_nav_page kbt.settings matches 4 run scoreboard players set @s kbt.page 1
function kbt:settings/render
