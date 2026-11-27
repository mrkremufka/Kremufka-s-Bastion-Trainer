data modify storage kbt:routes editor.pending set value {action:5,browser:1b,browser_mode:"route"}
scoreboard players set #rc_confirm kbt.settings 0
execute if data storage kbt:route_setup {creator_mode:"movement"} run data modify storage kbt:routes editor.pending.browser_mode set value "movement"
execute if score @s kbt.rc_menu matches 141 run data modify storage kbt:routes editor.pending.slot set from storage kbt:route_runtime draft_slots[0]
execute if score @s kbt.rc_menu matches 141 run data modify storage kbt:routes editor.pending.record set from storage kbt:route_runtime draft_choices[0]
execute if score @s kbt.rc_menu matches 142 run data modify storage kbt:routes editor.pending.slot set from storage kbt:route_runtime draft_slots[1]
execute if score @s kbt.rc_menu matches 142 run data modify storage kbt:routes editor.pending.record set from storage kbt:route_runtime draft_choices[1]
function kbt:routes/creator/drafts/delete_check
execute if score #rc_draft_delete_valid kbt.settings matches 1 run function kbt:routes/creator/manage/prompt
execute unless score #rc_draft_delete_valid kbt.settings matches 1 run data remove storage kbt:routes editor.pending
execute unless score #rc_draft_delete_valid kbt.settings matches 1 run tellraw @s {"text":"Draft deletion is unavailable Close the editor, finish loading or pending edits, and reopen Drafts in the Nether lobby","color":"yellow"}
