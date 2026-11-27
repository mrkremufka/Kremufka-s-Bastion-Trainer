scoreboard players set #rc_head_length kbt.settings 0
execute if data storage kbt:route_text pending.element{type:13} if entity @s[nbt={SelectedItem:{id:"minecraft:writable_book",tag:{kbtRouteHead:1b}}}] store result score #rc_head_length kbt.settings run data get entity @s SelectedItem.tag.pages[0]
execute if score @s kbt.rc_menu matches 91 if score #rc_head_length kbt.settings matches 1..16 run function kbt:routes/creator/head/apply_name
execute if score @s kbt.rc_menu matches 96 if score #rc_head_length kbt.settings matches 1..4096 run function kbt:routes/creator/head/apply_texture
execute if score #rc_head_length kbt.settings matches 0 run tellraw @s {"text":"Hold the Player Head book with a non-empty first page","color":"red"}
execute if score @s kbt.rc_menu matches 91 if score #rc_head_length kbt.settings matches 17.. run tellraw @s {"text":"A player name must contain 1..16 characters Use Texture Book for Base64 textures","color":"red"}
