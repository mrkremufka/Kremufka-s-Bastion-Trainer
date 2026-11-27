execute if score @s kbt.creator matches 1 if data storage kbt:route_text pending run tellraw @s {"text":"Save Text or Cancel Text before saving the route","color":"yellow"}
execute if score @s kbt.creator matches 1 unless data storage kbt:route_text pending run function kbt:routes/creator/validate/start
execute if score @s kbt.creator matches 1 unless data storage kbt:route_text pending if score #rc_save_valid kbt.settings matches 1 run function kbt:routes/creator/catalog/save_valid
