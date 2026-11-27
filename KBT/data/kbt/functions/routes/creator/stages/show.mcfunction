scoreboard players set #rc_show_all kbt.settings 0
execute unless score #rc_nav_quiet kbt.settings matches 1 run tellraw @s [{"text":"Editing stage ","color":"gray"},{"nbt":"draft.stage","storage":"kbt:routes","color":"aqua"}]
