execute unless score @s kbt.page matches 0..5 run function kbt:settings/render
execute if score @s kbt.page matches 4 unless score #gp_bastion kbt.settings matches 3 run function kbt:settings/render
scoreboard players operation #settings_poll_page kbt.settings = @s kbt.page
execute if score #settings_poll_page kbt.settings matches 0 run function kbt:settings/pages/main/poll
execute if score #settings_poll_page kbt.settings matches 1 run function kbt:settings/pages/bastion/poll

execute if score #settings_poll_page kbt.settings matches 2 run function kbt:settings/pages/debug/poll
execute if score #settings_poll_page kbt.settings matches 3 run function kbt:settings/pages/scoreboard/poll
execute if score #settings_poll_page kbt.settings matches 4 run function kbt:settings/pages/stables/poll
execute if score #settings_poll_page kbt.settings matches 5 run function kbt:settings/pages/mobs/poll
