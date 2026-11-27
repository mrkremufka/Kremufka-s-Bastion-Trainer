execute store result score #bi_id kbt.settings run data get storage kbt:route_builtin entry.id
scoreboard players set #bi_conflict kbt.settings 0
data modify storage kbt:route_builtin queue set from storage kbt:routes records
data modify storage kbt:route_builtin result set value []
execute if data storage kbt:route_builtin queue[0] run function kbt:routes/builtin/register_scan
execute if score #bi_conflict kbt.settings matches 0 run data modify storage kbt:route_builtin result append from storage kbt:route_builtin entry
execute if score #bi_conflict kbt.settings matches 0 run data modify storage kbt:routes records set from storage kbt:route_builtin result
execute if score #bi_conflict kbt.settings matches 0 run function kbt:routes/catalog_changed
execute if score #bi_conflict kbt.settings matches 1 run tellraw @a {"text":"Built-in ID conflicts with a Custom route Export with a different BuiltinId; Custom data was preserved","color":"red"}
