execute if score #rp_active kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. if score #ph_enabled kbt.settings matches 1 run function kbt:routes/practice/phase/loop/change
execute unless score #rp_active kbt.settings matches 1 run tellraw @s {"text":"Start a route to loop its current phase","color":"gray"}
scoreboard players enable @s kbt.rp_action
