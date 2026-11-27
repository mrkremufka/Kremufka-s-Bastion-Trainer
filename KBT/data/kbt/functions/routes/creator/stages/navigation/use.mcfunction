function kbt:routes/creator/stages/navigation/check
execute if score #rc_nav_allowed kbt.settings matches 1 run function kbt:routes/creator/stages/navigation/step
execute unless score #rc_nav_allowed kbt.settings matches 1 run title @s actionbar {"text":"Finish the current edit or loading before switching stages","color":"yellow"}
