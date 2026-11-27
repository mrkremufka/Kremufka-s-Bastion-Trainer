function kbt:routes/creator/edit/check
execute if score #re_ok kbt.settings matches 1 run function kbt:routes/creator/edit/menu_valid
execute unless score #re_ok kbt.settings matches 1 run tellraw @s {"text":"The route changed Aim at the block again to refresh the selection","color":"yellow"}
