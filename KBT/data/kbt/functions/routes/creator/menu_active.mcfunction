scoreboard players enable @s kbt.rc_menu
scoreboard players enable @s kbt.rc_open
scoreboard players enable @s kbt.rc_delete
function kbt:routes/creator/tool_label
function kbt:routes/creator/menu/difficulty_label

tellraw @s {"text":"--- ROUTE EDITOR ---","color":"aqua","bold":true}
tellraw @s [{"text":"Route: ","color":"gray"},{"nbt":"draft.name","storage":"kbt:routes","color":"white"}]
tellraw @s [{"text":"ID / stage / difficulty: ","color":"gray"},{"nbt":"draft.id","storage":"kbt:routes","color":"white"},{"text":" / ","color":"gray"},{"nbt":"draft.stage","storage":"kbt:routes","color":"aqua"},{"text":" / ","color":"gray"},{"nbt":"editor_labels.difficulty","storage":"kbt:route_runtime","interpret":true}]
tellraw @s [{"text":"Tools: ","color":"gray"},{"text":"[Get Tools]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 10"},"hoverEvent":{"action":"show_text","contents":{"text":"Get all authoring tools, Undo and Redo in your inventory"}}}]
tellraw @s [{"text":"Settings: ","color":"gray"},{"text":"[Route Settings] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 120"}},{"text":"[Stages & Preview] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 121"}},{"text":"[Advanced]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 122"}}]
tellraw @s [{"text":"Run: ","color":"gray"},{"text":"[Save Route] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 15"}},{"text":"[Play Saved Route]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 27"},"hoverEvent":{"action":"show_text","contents":{"text":"Restore the saved layout and test the saved route from Start"}}}]
execute if data storage kbt:route_text pending run tellraw @s [{"text":"Pending element: ","color":"gray"},{"text":"[Continue Editing]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 61"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to the current text, message, head or mob area editor"}}}]
tellraw @s {"text":"[Exit / keep draft]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 9"}}

tellraw @s {"text":"[Bastion Generation]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 133"},"hoverEvent":{"action":"show_text","contents":{"text":"Change the saved bastion and its variants while keeping the route points"}}}

tellraw @s {"text":"[Fix current phase]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 134"},"hoverEvent":{"action":"show_text","contents":{"text":"Replace the current phase with updated objects from the previous phase Keeps its ending and supports Undo"}}}
