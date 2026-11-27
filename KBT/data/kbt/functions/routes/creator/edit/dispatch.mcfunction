function kbt:routes/creator/edit/check
execute if score #re_ok kbt.settings matches 1 if score @s kbt.rc_edit matches 1..8 run function kbt:routes/creator/edit/pick
execute if score #re_ok kbt.settings matches 1 if score @s kbt.rc_edit matches 100..101 run function kbt:routes/creator/edit/page
execute unless score #re_ok kbt.settings matches 1 run tellraw @s {"text":"The route changed Aim at the block again to refresh the selection","color":"yellow"}
