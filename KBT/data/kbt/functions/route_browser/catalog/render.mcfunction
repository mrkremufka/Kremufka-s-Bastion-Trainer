function kbt:route_browser/catalog/filters
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_pb_text] run data modify entity @s CustomName set value '{"text":"PB: --:--.---","color":"gray"}'
execute if data storage kbt:route_browser selected run function kbt:route_browser/catalog/render_selected