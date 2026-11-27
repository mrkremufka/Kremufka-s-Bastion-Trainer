data modify storage kbt:route_runtime write_record set from storage kbt:routes draft
data modify storage kbt:route_runtime write_record.ready set value 1b
execute store result score #rc_target kbt.settings run data get storage kbt:routes draft.id
scoreboard players set #rc_catalog_op kbt.settings 1
function kbt:routes/creator/catalog/scan_begin
execute unless data storage kbt:route_runtime found run data modify storage kbt:route_runtime catalog_result append from storage kbt:route_runtime write_record
execute if score #rc_protected kbt.settings matches 0 run function kbt:routes/creator/catalog/save_commit
execute if score #rc_protected kbt.settings matches 1 run tellraw @s {"text":"Save refused: that ID belongs to a Built-in/protected route","color":"red"}
