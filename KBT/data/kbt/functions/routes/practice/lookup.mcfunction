scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
data remove storage kbt:route_practice candidate
execute if data storage kbt:route_runtime found{ready:1b} run data modify storage kbt:route_practice candidate set from storage kbt:route_runtime found
execute unless data storage kbt:route_practice candidate run tellraw @s {"text":"No saved route with this ID Save or install the route first","color":"red"}
execute if data storage kbt:route_practice candidate run function kbt:routes/practice/validate/start
execute if data storage kbt:route_practice candidate if score #rc_save_valid kbt.settings matches 1 run function kbt:routes/practice/check_layout
