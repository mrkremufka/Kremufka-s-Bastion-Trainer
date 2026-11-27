function kbt:routes/creator/ids/prepare
execute if score #rc_id_ok kbt.settings matches 1 run function kbt:routes/creator/manage/new_confirmed_valid
execute unless score #rc_id_ok kbt.settings matches 1 run tellraw @s {"text":"Cannot allocate a new route ID Existing draft and backup were kept","color":"red"}
