scoreboard players enable @s kbt.rc_menu
function kbt:routes/creator/menu/difficulty_label
tellraw @s {"text":"--- ROUTE SETTINGS ---","color":"yellow","bold":true}
tellraw @s [{"text":"Route: ","color":"gray"},{"nbt":"draft.name","storage":"kbt:routes","color":"white"}]
tellraw @s [{"text":"Name: ","color":"gray"},{"text":"[Name Route] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 32"}},{"text":"[Apply Name]","color":"green","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 33"}}]
tellraw @s [{"text":"Difficulty: ","color":"gray"},{"nbt":"editor_labels.difficulty","storage":"kbt:route_runtime","interpret":true},{"text":"  ","color":"gray"},{"text":"[Change]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 16"},"hoverEvent":{"action":"show_text","contents":{"text":"Cycle Beginner, Intermediate and Advanced"}}}]
tellraw @s {"text":"[Back to Route Editor]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 8"}}

tellraw @s {"text":"[Bastion Generation]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger kbt.rc_menu set 133"},"hoverEvent":{"action":"show_text","contents":{"text":"Change the saved bastion and its variants while keeping the route points"}}}
