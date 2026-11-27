execute as @e[type=minecraft:armor_stand,tag=kbt.rb_route_row] run data merge entity @s {CustomNameVisible:0b}
scoreboard players set @e[type=minecraft:pufferfish,tag=kbt.rb_route_hitbox] kbt.rb_rowid 0
execute if block -1004 254 1003 minecraft:air if block -1004 255 1003 minecraft:air run function kbt:route_browser/catalog/rows/resolve
