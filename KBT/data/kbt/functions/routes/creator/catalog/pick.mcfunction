scoreboard players enable @s kbt.rc_pick
execute if score #rp_job kbt.settings matches 1.. run tellraw @s {"text":"Wait for the layout copy to finish","color":"yellow"}
execute unless score #rp_job kbt.settings matches 1.. if score @s kbt.rc_wiz matches 1 if score @s kbt.rc_pick matches 1..10 run function kbt:routes/creator/catalog/pick_active
execute if score @s kbt.rc_pick matches 11..20 if score #rp_active kbt.settings matches 1 run tellraw @s {"text":"Return to the lobby before deleting a saved route or trail","color":"yellow"}
execute if score @s kbt.rc_pick matches 11..20 if score #rc_generating kbt.settings matches 1 run tellraw @s {"text":"Wait for Create Route to finish before deleting a saved entry","color":"yellow"}
execute unless score #rp_job kbt.settings matches 1.. unless score #rp_active kbt.settings matches 1 unless score #rc_generating kbt.settings matches 1 if score @s kbt.rc_wiz matches 1 if score @s kbt.rc_pick matches 11..20 run function kbt:routes/creator/catalog/delete_pick_active

execute if score @s kbt.rc_wiz matches 1 if score @s kbt.rc_pick matches 21..30 run function kbt:share/export/pick
