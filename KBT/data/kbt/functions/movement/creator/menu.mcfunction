scoreboard players enable @s kbt.rc_menu
function kbt:routes/creator/menu/difficulty_label

tellraw @s {"text":"--- TRAIL EDITOR ---","color":"yellow","bold":true}
tellraw @s [{"text":"Trail: ","color":"gray"},{"nbt":"draft.name","storage":"kbt:routes","color":"white"},{"text":"  ID: ","color":"gray"},{"nbt":"draft.id","storage":"kbt:routes","color":"white"}]
tellraw @s [{"text":"Tools: ","color":"gray"},{"text":"[Get Tools]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 10"},"hoverEvent":{"action":"show_text","contents":{"text":"Get all trail tools, Remove, Undo and Redo in your inventory"}}}]
tellraw @s [{"text":"Name: ","color":"gray"},{"text":"[Name Trail] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 32"}},{"text":"[Apply Name]","color":"green","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 33"}}]
tellraw @s [{"text":"Difficulty: ","color":"gray"},{"nbt":"editor_labels.difficulty","storage":"kbt:route_runtime","interpret":true},{"text":"  ","color":"gray"},{"text":"[Change]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 16"},"hoverEvent":{"action":"show_text","contents":{"text":"Cycle Beginner, Intermediate and Advanced"}}}]
tellraw @s [{"text":"Preview: ","color":"gray"},{"text":"[Preview All]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 20"},"hoverEvent":{"action":"show_text","contents":{"text":"Show the trail's saved markers and block outlines"}}}]
tellraw @s {"text":"[Stages & Preview]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 121"}}
tellraw @s {"text":"[Fix current phase]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 134"},"hoverEvent":{"action":"show_text","contents":{"text":"Rebuild this phase from the previous one Undo restores the original"}}}
execute if data storage kbt:route_text pending run tellraw @s {"text":"[Continue Editing]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 61"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to the pending text, message, head or mob area editor"}}}
tellraw @s [{"text":"Run: ","color":"gray"},{"text":"[Save Trail] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 15"}},{"text":"[Play Trail]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 38"},"hoverEvent":{"action":"show_text","contents":{"text":"Save edits, restore the bastion and test from Start"}}}]
tellraw @s {"text":"[Exit Editor]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 9"},"hoverEvent":{"action":"show_text","contents":{"text":"Keep the draft and return to the Movement lobby"}}}

tellraw @s {"text":"[Bastion Generation]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 133"},"hoverEvent":{"action":"show_text","contents":{"text":"Change the saved bastion and its variants while keeping the route points"}}}

tellraw @s {"text":"[Advanced]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 122"}}
