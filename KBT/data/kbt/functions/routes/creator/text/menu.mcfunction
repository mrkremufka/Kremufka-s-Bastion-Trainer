execute if score @s kbt.creator matches 1 if data storage kbt:route_text pending.element{type:13} run function kbt:routes/creator/head/menu
execute if score @s kbt.creator matches 1 if data storage kbt:route_text pending.element{type:15} run function kbt:routes/creator/region/menu
execute if score @s kbt.creator matches 1 if data storage kbt:route_text pending.element{type:17} run function kbt:routes/creator/hoglin_region/menu
execute if score @s kbt.creator matches 1 if data storage kbt:route_text pending unless data storage kbt:route_text pending.element{type:13} unless data storage kbt:route_text pending.element{type:15} unless data storage kbt:route_text pending.element{type:17} run function kbt:routes/creator/text/menu_active
execute if score @s kbt.creator matches 1 unless data storage kbt:route_text pending run tellraw @s {"text":"Use Place Text or Chat Message to start editing a message","color":"yellow"}
