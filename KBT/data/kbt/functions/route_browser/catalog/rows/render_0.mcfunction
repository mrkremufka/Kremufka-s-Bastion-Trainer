execute store result score #rb_rowid kbt.settings run data get storage kbt:route_browser rows[0].id
scoreboard players operation @e[type=minecraft:pufferfish,tag=kbt.rb_row_0_hitbox] kbt.rb_rowid = #rb_rowid kbt.settings
data modify block -1004 255 1003 Text1 set value '{"nbt":"rows[0].name","storage":"kbt:route_browser","color":"dark_gray","bold":false}'
execute if score #rb_rowid kbt.settings = #rb_selected_id kbt.settings run data modify block -1004 255 1003 Text1 set value '{"nbt":"rows[0].name","storage":"kbt:route_browser","color":"aqua","bold":false}'
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_row_0_text] run data modify entity @s CustomName set from block -1004 255 1003 Text1
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_row_0_text] run data merge entity @s {CustomNameVisible:1b}
