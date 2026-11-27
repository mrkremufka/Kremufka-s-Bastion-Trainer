data modify storage kbt:routes records set from storage kbt:route_runtime catalog_result
function kbt:routes/catalog_changed
scoreboard players set #rc_draft_id kbt.settings -1
execute store result score #rc_draft_id kbt.settings run data get storage kbt:routes draft.id
execute if score #rc_draft_id kbt.settings = #rc_target kbt.settings run function kbt:routes/creator/manage/delete_current
tellraw @s {"text":"Saved entry deleted PB data was preserved","color":"aqua"}
