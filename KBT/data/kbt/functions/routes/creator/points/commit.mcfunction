function kbt:routes/creator/history/push
function kbt:routes/creator/stages/read
scoreboard players set #rc_extend kbt.settings 0
execute if score #rc_tool kbt.settings matches 5 if data storage kbt:routes draft.checkpoint_chain run function kbt:routes/creator/points/extend_checkpoint
data remove storage kbt:routes draft.checkpoint_chain
scoreboard players set #rc_addstage kbt.settings 0
execute if score #rc_tool kbt.settings matches 5 unless score #rc_extend kbt.settings matches 1 run scoreboard players set #rc_addstage kbt.settings 1
scoreboard players set #rc_insertstage kbt.settings 0
execute if score #rc_addstage kbt.settings matches 1 if score #rc_stage kbt.settings < #rc_count kbt.settings run scoreboard players set #rc_insertstage kbt.settings 1
data modify storage kbt:routes draft.ready set value 0b
execute if score #rc_tool kbt.settings matches 1 run data modify storage kbt:routes draft.start set from storage kbt:route_runtime element
execute if score #rc_tool kbt.settings matches 7 run data modify storage kbt:routes draft.finish set from storage kbt:route_runtime element
scoreboard players set #rc_editop kbt.settings 1
execute if score #rc_tool kbt.settings matches 2..6 unless score #rc_insertstage kbt.settings matches 1 run function kbt:routes/creator/stages/apply
execute if score #rc_tool kbt.settings matches 8 run function kbt:routes/creator/stages/apply
execute if score #rc_tool kbt.settings matches 10..12 run function kbt:routes/creator/stages/apply
execute if score #rc_tool kbt.settings matches 13 run function kbt:routes/creator/stages/apply
execute if score #rc_tool kbt.settings matches 15 run function kbt:routes/creator/stages/apply
execute if score #rc_tool kbt.settings matches 17 run function kbt:routes/creator/stages/apply
execute if score #rc_tool kbt.settings matches 21 run function kbt:routes/creator/stages/apply
execute if score #rc_addstage kbt.settings matches 1 run function kbt:routes/creator/points/next_stage
execute if score #rc_extend kbt.settings matches 1 run data modify storage kbt:routes draft.stage set from storage kbt:route_runtime checkpoint_focus
tellraw @s [{"text":"Added ","color":"aqua"},{"nbt":"draft.tool_name","storage":"kbt:routes","color":"gold"},{"text":" | stage ","color":"gray"},{"nbt":"element.stage","storage":"kbt:route_runtime","color":"light_purple"}]
execute if score #rc_addstage kbt.settings matches 1 run data modify storage kbt:routes draft.checkpoint_chain set from storage kbt:route_runtime element.stage
execute if score #rc_extend kbt.settings matches 1 run data modify storage kbt:routes draft.checkpoint_chain set from storage kbt:route_runtime element.stage
data remove storage kbt:routes draft.checkpoint_regenerate
execute if score #rc_addstage kbt.settings matches 1 if data storage kbt:route_runtime element{regenerate:1b} run data modify storage kbt:routes draft.checkpoint_regenerate set value 1b
execute if score #rc_extend kbt.settings matches 1 if data storage kbt:route_runtime element{regenerate:1b} run data modify storage kbt:routes draft.checkpoint_regenerate set value 1b
execute if score #rc_extend kbt.settings matches 1 run tellraw @s {"text":"Checkpoint area extended Any point in this group advances the same stage after all required tasks are done","color":"light_purple"}
scoreboard players set #rc_preview_shift kbt.settings 0
scoreboard players set #rc_preview_append kbt.settings 0
execute if score #rc_insertstage kbt.settings matches 1 run scoreboard players set #rc_preview_shift kbt.settings 1
execute if score #rc_extend kbt.settings matches 1 run scoreboard players set #rc_preview_append kbt.settings 1
function kbt:routes/creator/visuals/rebuild
