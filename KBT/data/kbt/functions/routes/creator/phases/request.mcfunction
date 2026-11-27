scoreboard players set @s kbt.rc_cd 6
function kbt:routes/creator/stages/navigation/check
execute unless score @s kbt.rc_menu matches 139..140 run scoreboard players set #rc_nav_allowed kbt.settings 0
execute if score #rc_nav_allowed kbt.settings matches 1 run function kbt:routes/creator/phases/step
execute unless score #rc_nav_allowed kbt.settings matches 1 run title @s actionbar {"text":"Finish the current edit or loading before switching phases","color":"yellow"}
