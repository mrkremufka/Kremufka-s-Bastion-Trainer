scoreboard players set #rc_generation_edit kbt.settings 0
title @s actionbar {"text":"Preparing | Generating bastion","color":"aqua"}
execute if data storage kbt:route_setup edit_generation{queued:1b} run scoreboard players set #rc_generation_edit kbt.settings 1
execute if score #rc_generation_edit kbt.settings matches 1 run function kbt:routes/creator/generation/generate
execute if score #rc_generation_edit kbt.settings matches 0 run function kbt:routes/setup/generate_new_player
