scoreboard players set #rc_target kbt.settings -1
execute store result score #rc_target kbt.settings run data get storage kbt:routes editor.pending.id
scoreboard players set #rc_catalog_op kbt.settings 0
function kbt:routes/creator/catalog/scan_begin
scoreboard players set #rc_delete_changed kbt.settings 1
data modify storage kbt:route_runtime delete_compare set from storage kbt:routes editor.pending.record
execute if data storage kbt:routes editor.pending.record if data storage kbt:route_runtime found{source:1} if score #rc_protected kbt.settings matches 0 store success score #rc_delete_changed kbt.settings run data modify storage kbt:route_runtime delete_compare set from storage kbt:route_runtime found
scoreboard players set #rc_delete_valid kbt.settings 0
execute if score #rc_delete_changed kbt.settings matches 0 run scoreboard players set #rc_delete_valid kbt.settings 1
execute if score #rp_job kbt.settings matches 1.. run scoreboard players set #rc_delete_valid kbt.settings 0
execute if score #rp_active kbt.settings matches 1 run scoreboard players set #rc_delete_valid kbt.settings 0
execute if score #rc_generating kbt.settings matches 1 run scoreboard players set #rc_delete_valid kbt.settings 0
execute if data storage kbt:routes editor.pending{browser:1b,browser_mode:"movement"} unless data storage kbt:route_setup {creator_mode:"movement"} run scoreboard players set #rc_delete_valid kbt.settings 0
execute if data storage kbt:routes editor.pending{browser:1b,browser_mode:"route"} unless data storage kbt:route_setup {creator_mode:"route"} run scoreboard players set #rc_delete_valid kbt.settings 0
execute if score #rc_delete_valid kbt.settings matches 1 run function kbt:routes/creator/manage/delete_apply
execute unless score #rc_delete_valid kbt.settings matches 1 run tellraw @s {"text":"Deletion cancelled: the saved entry changed, the browser changed, or practice/copying is active Nothing was deleted; request Delete again from Saved Routes","color":"yellow"}
