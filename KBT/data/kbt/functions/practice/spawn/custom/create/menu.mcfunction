tellraw @s {"text":"Fly to your chosen spawnpoint and face the desired direction","color":"aqua"}
tellraw @s [{"text":"[Use This Position] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kbt.cs_edit set 1"}},{"text":"[Cancel]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger kbt.cs_edit set 3"}}]
