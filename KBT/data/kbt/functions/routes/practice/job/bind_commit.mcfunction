data modify storage kbt:route_runtime write_record set from storage kbt:route_practice job_record
data remove storage kbt:route_runtime write_record.recipe
execute if data storage kbt:share arena run data modify storage kbt:route_runtime write_record.recipe set from storage kbt:share arena
scoreboard players set #rp_layout_revision kbt.settings 0
execute if data storage kbt:route_practice job_record.layout.revision store result score #rp_layout_revision kbt.settings run data get storage kbt:route_practice job_record.layout.revision
scoreboard players add #rp_layout_revision kbt.settings 1
data modify storage kbt:route_runtime write_record.layout set value {mode:"snapshot",schema:1,bank:0,entities:0b}
execute if data storage kbt:route_runtime write_record.mobs run data modify storage kbt:route_runtime write_record.layout.entities set value 1b
execute if data storage kbt:route_practice open_editor_after_bind run data modify storage kbt:route_runtime write_record.layout.pristine set value 1b
execute store result storage kbt:route_runtime write_record.layout.revision int 1 run scoreboard players get #rp_layout_revision kbt.settings
execute store result storage kbt:route_runtime write_record.layout.bank int 1 run scoreboard players get #rp_bank kbt.settings
execute if data storage kbt:share importing run function kbt:share/import/commit
execute store result score #rc_target kbt.settings run data get storage kbt:route_practice job_record.id
scoreboard players set #rc_catalog_op kbt.settings 1
function kbt:routes/creator/catalog/scan_begin
execute if score #rc_protected kbt.settings matches 0 if data storage kbt:route_runtime found run data modify storage kbt:routes records set from storage kbt:route_runtime catalog_result
execute if score #rc_protected kbt.settings matches 0 if data storage kbt:route_runtime found run function kbt:routes/catalog_changed
scoreboard players set #rp_draft_id kbt.settings 0
execute store result score #rp_draft_id kbt.settings run data get storage kbt:routes draft.id
execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings run data modify storage kbt:routes draft.layout set from storage kbt:route_runtime write_record.layout
execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings if data storage kbt:route_runtime write_record.mobs run data modify storage kbt:routes draft.mobs set from storage kbt:route_runtime write_record.mobs
execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings if data storage kbt:route_runtime write_record.mobs if data storage kbt:routes editor.history[0] run data modify storage kbt:routes editor.history[].mobs set from storage kbt:route_runtime write_record.mobs
execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings if data storage kbt:route_runtime write_record.mobs if data storage kbt:routes editor.redo[0] run data modify storage kbt:routes editor.redo[].mobs set from storage kbt:route_runtime write_record.mobs
execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings if data storage kbt:routes editor.history[0] run data modify storage kbt:routes editor.history[].layout set from storage kbt:route_runtime write_record.layout
execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings if data storage kbt:routes editor.redo[0] run data modify storage kbt:routes editor.redo[].layout set from storage kbt:route_runtime write_record.layout
tellraw @s {"text":"Arena layout saved Create Route also preserves the generated mobs","color":"green"}
execute if data storage kbt:route_setup edit_generation{queued:1b} if entity @s[tag=kbt.rp_generation] if score #rp_draft_id kbt.settings = #rc_target kbt.settings run function kbt:routes/creator/generation/commit

execute if score #rp_draft_id kbt.settings = #rc_target kbt.settings run function kbt:share/recipe/draft
execute if data storage kbt:share importing run function kbt:share/import/success
