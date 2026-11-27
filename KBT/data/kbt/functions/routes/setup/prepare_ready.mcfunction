execute if score #rp_job kbt.settings matches 1.. run tellraw @s {"text":"Wait for the layout copy to finish","color":"yellow"}
execute if score @s kbt.edit matches 1..3 run tellraw @s {"text":"Save your loadout first","color":"red"}
execute unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 unless score @s kbt.edit matches 1..3 run function kbt:routes/setup/check_id
