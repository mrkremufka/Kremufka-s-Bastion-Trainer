execute as @e[type=minecraft:armor_stand,tag=kbt.rb_selected_text] run data modify entity @s CustomName set value '{"text":"DISPLAY HELPER BLOCKED","color":"red"}'
execute if block -1004 254 1003 minecraft:air if block -1004 255 1003 minecraft:air run function kbt:route_browser/catalog/resolve_text
