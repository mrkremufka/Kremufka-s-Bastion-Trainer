data modify storage kbt:route_naming compare set from storage kbt:routes draft.name
execute store success score #rc_name_changed kbt.settings run data modify storage kbt:route_naming compare set from storage kbt:route_naming candidate
execute if score #rc_name_changed kbt.settings matches 1 run function kbt:routes/creator/naming/commit
execute if score #rc_name_changed kbt.settings matches 0 run tellraw @s {"text":"This route already has that name","color":"gray"}
function kbt:routes/creator/naming/clear
