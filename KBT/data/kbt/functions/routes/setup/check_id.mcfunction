scoreboard players set #rc_new_movement kbt.settings 0
execute if data storage kbt:route_setup {creator_mode:"movement"} run scoreboard players set #rc_new_movement kbt.settings 1
function kbt:routes/creator/ids/prepare
scoreboard players set #rc_new_movement kbt.settings 0
execute if score #rc_id_ok kbt.settings matches 1 run function kbt:routes/setup/queue
execute unless score #rc_id_ok kbt.settings matches 1 run tellraw @s {"text":"Cannot allocate a new route ID Arena and draft were kept","color":"red"}
