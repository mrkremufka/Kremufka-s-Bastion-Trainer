scoreboard players set #rc_message_edit kbt.settings 0
execute store result score #rc_text_id kbt.settings run data get storage kbt:route_text pending.draft_id
execute store result score #rc_text_draft kbt.settings run data get storage kbt:routes draft.id
execute store result score #rc_text_stage kbt.settings run data get storage kbt:route_text pending.element.stage
execute store result score #rc_stage kbt.settings run data get storage kbt:routes draft.stage
execute if score #rc_text_id kbt.settings = #rc_text_draft kbt.settings if score #rc_text_stage kbt.settings = #rc_stage kbt.settings run scoreboard players set #rc_message_edit kbt.settings 1
execute unless score #rc_message_edit kbt.settings matches 1 run tellraw @s {"text":"Return to this message's original route and stage before changing its area","color":"yellow"}
