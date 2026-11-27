execute store result score #rc_text_id kbt.settings run data get storage kbt:route_text pending.draft_id
execute store result score #rc_text_draft kbt.settings run data get storage kbt:routes draft.id
execute store result score #rc_text_stage kbt.settings run data get storage kbt:route_text pending.element.stage
function kbt:routes/creator/stages/read
scoreboard players set #rc_text_can_save kbt.settings 0
execute if score #rc_text_id kbt.settings = #rc_text_draft kbt.settings if score #rc_text_stage kbt.settings = #rc_stage kbt.settings if score #rc_stage kbt.settings <= #rc_count kbt.settings run scoreboard players set #rc_text_can_save kbt.settings 1
execute if data storage kbt:route_text pending.element{type:13} unless data storage kbt:route_text pending.element{head_ready:1b} run scoreboard players set #rc_text_can_save kbt.settings 0
execute if score #rc_text_can_save kbt.settings matches 1 run function kbt:routes/creator/text/commit
execute unless score #rc_text_can_save kbt.settings matches 1 run tellraw @s {"text":"Return to the text's original stage before saving, or Cancel Text and place it again","color":"red"}
