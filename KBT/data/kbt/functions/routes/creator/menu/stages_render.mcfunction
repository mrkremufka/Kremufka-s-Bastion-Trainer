scoreboard players enable @s kbt.rc_menu
scoreboard players enable @s kbt.rc_stageui
function kbt:routes/creator/phases/read
tellraw @s {"text":"--- STAGES & PREVIEW ---","color":"aqua","bold":true}
tellraw @s [{"text":"Current stage: ","color":"gray"},{"nbt":"draft.stage","storage":"kbt:routes","color":"aqua"}]
tellraw @s [{"text":"[<] ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 139"}},{"text":"[Phase ","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 121"}},{"score":{"name":"#rcpn_phase","objective":"kbt.settings"},"color":"light_purple"},{"text":" / ","color":"gray"},{"score":{"name":"#rcpn_total","objective":"kbt.settings"},"color":"light_purple"},{"text":"] ","color":"light_purple"},{"text":"[>]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 140"}}]
execute if score #rcpn_count kbt.settings matches 1.. run function kbt:routes/creator/menu/stages_list/render
tellraw @s [{"text":"Preview: ","color":"gray"},{"text":"[All Stages] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 20"}},{"text":"[Current Stage]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 21"}}]
tellraw @s [{"text":"Checkpoint: ","color":"gray"},{"text":"[Remove / Merge Next Stage]","color":"red","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 25"},"hoverEvent":{"action":"show_text","contents":{"text":"Remove the current closing checkpoint and merge the next stage into this one"}}}]
execute unless data storage kbt:routes draft{mode:"movement"} run tellraw @s {"text":"[Back to Route Editor]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 8"}}
execute if data storage kbt:routes draft{mode:"movement"} run tellraw @s {"text":"[Back to Trail Editor]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 8"}}
tellraw @s {"text":"[Fix current phase]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 134"},"hoverEvent":{"action":"show_text","contents":{"text":"Rebuild the whole phase containing the current stage using the immediately previous phase Undo is available"}}}
