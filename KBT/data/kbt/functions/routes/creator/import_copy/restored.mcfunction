data remove storage kbt:route_practice edit_after_restore
scoreboard players set #rc_new_movement kbt.settings 0
execute if data storage kbt:route_practice job_record{mode:"movement"} run scoreboard players set #rc_new_movement kbt.settings 1
function kbt:routes/creator/ids/prepare
execute if score #rc_id_ok kbt.settings matches 1 run function kbt:routes/creator/import_copy/create
execute unless score #rc_id_ok kbt.settings matches 1 run tellraw @s {"text":"No free Custom ID Existing draft and imported route were kept","color":"red"}
