scoreboard players set #rc_draft_delete_valid kbt.settings 0
scoreboard players set #rc_draft_delete_changed kbt.settings 1
data remove storage kbt:route_runtime draft_delete_compare
execute if data storage kbt:routes editor.pending{action:5} if data storage kbt:routes editor.pending.record.id if data storage kbt:routes editor.pending.record{source:1} unless data storage kbt:routes editor.pending.record.import_key run data modify storage kbt:route_runtime draft_delete_compare set from storage kbt:routes editor.pending.record
execute if data storage kbt:routes editor.pending{slot:0} if data storage kbt:route_runtime draft_delete_compare if data storage kbt:routes draft.id store success score #rc_draft_delete_changed kbt.settings run data modify storage kbt:route_runtime draft_delete_compare set from storage kbt:routes draft
execute if data storage kbt:routes editor.pending{slot:1} if data storage kbt:route_runtime draft_delete_compare if data storage kbt:routes editor.backup_draft.id store success score #rc_draft_delete_changed kbt.settings run data modify storage kbt:route_runtime draft_delete_compare set from storage kbt:routes editor.backup_draft
execute if score #rc_draft_delete_changed kbt.settings matches 0 run scoreboard players set #rc_draft_delete_valid kbt.settings 1
execute unless score @s kbt.rc_wiz matches 1 run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if score @s kbt.creator matches 1 run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if score @s kbt.edit matches 1..3 run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if score #rp_active kbt.settings matches 1 run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if score #rp_job kbt.settings matches 1.. run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if score #ki_busy kbt.settings matches 1 run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if score #rc_generating kbt.settings matches 1 run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if data storage kbt:route_text pending run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if data storage kbt:routes editor.pending{browser_mode:"movement"} unless data storage kbt:route_setup {creator_mode:"movement"} run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if data storage kbt:routes editor.pending{browser_mode:"route"} unless data storage kbt:route_setup {creator_mode:"route"} run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if data storage kbt:routes editor.pending{browser_mode:"movement"} unless data storage kbt:routes editor.pending.record{mode:"movement"} run scoreboard players set #rc_draft_delete_valid kbt.settings 0
execute if data storage kbt:routes editor.pending{browser_mode:"route"} if data storage kbt:routes editor.pending.record{mode:"movement"} run scoreboard players set #rc_draft_delete_valid kbt.settings 0
data remove storage kbt:route_runtime draft_delete_compare
