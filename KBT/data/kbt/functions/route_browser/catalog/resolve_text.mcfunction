setblock -1004 254 1003 minecraft:barrier
setblock -1004 255 1003 minecraft:oak_sign{Text1:'{"nbt":"selected.name","storage":"kbt:route_browser","color":"gold","bold":true}',Text2:'[{"text":"Route ","color":"gray"},{"score":{"name":"#rb_index","objective":"kbt.settings"}},{"text":" / "},{"score":{"name":"#rb_count","objective":"kbt.settings"}}]',Text3:'[{"nbt":"view.difficulty","storage":"kbt:route_browser","color":"gray"},{"text":" | "},{"nbt":"view.layout","storage":"kbt:route_browser"}]',Text4:'{"text":"PB: --:--.---","color":"gray"}'}
execute if score #rb_pb_found kbt.settings matches 1 run data modify block -1004 255 1003 Text4 set value '[{"text":"PB: ","color":"gold"},{"nbt":"view.pad_min","storage":"kbt:route_browser"},{"score":{"name":"#rb_minutes","objective":"kbt.settings"}},{"text":":"},{"nbt":"view.pad_sec","storage":"kbt:route_browser"},{"score":{"name":"#rb_seconds","objective":"kbt.settings"}},{"text":""},{"nbt":"view.pad_ms","storage":"kbt:route_browser"},{"score":{"name":"#rb_millis","objective":"kbt.settings"}}]'
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_selected_text] run data modify entity @s CustomName set from block -1004 255 1003 Text1
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_details_text] run data modify entity @s CustomName set from block -1004 255 1003 Text3
execute as @e[type=minecraft:armor_stand,tag=kbt.rb_pb_text] run data modify entity @s CustomName set from block -1004 255 1003 Text4
setblock -1004 255 1003 minecraft:air
setblock -1004 254 1003 minecraft:air
