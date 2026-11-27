execute if data storage kbt:route_text pending.element{type:13,head_ready:1b} run function kbt:routes/creator/text/save_check
execute if data storage kbt:route_text pending.element{type:13} unless data storage kbt:route_text pending.element{head_ready:1b} run tellraw @s {"text":"Apply a name/texture or copy a held player head before saving","color":"red"}
