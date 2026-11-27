scoreboard players set #rc_nav_previous kbt.settings 0
execute if predicate kbt:is_sneaking run scoreboard players set #rc_nav_previous kbt.settings 1
scoreboard players set #rc_nav_quiet kbt.settings 1
execute if score #rc_nav_previous kbt.settings matches 1 run function kbt:routes/creator/stages/previous
execute if score #rc_nav_previous kbt.settings matches 0 run function kbt:routes/creator/stages/next
scoreboard players set #rc_nav_quiet kbt.settings 0
function kbt:routes/creator/stages/navigation/display
