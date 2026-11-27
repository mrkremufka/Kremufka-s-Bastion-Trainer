execute store result score #rc_text_color kbt.settings run data get storage kbt:route_text pending.element.text.color
execute if score #rc_text_color kbt.settings matches 0 run data modify block 1000 255 1000 Text1 set value '{"color":"black","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 1 run data modify block 1000 255 1000 Text1 set value '{"color":"dark_blue","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 2 run data modify block 1000 255 1000 Text1 set value '{"color":"dark_green","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 3 run data modify block 1000 255 1000 Text1 set value '{"color":"dark_aqua","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 4 run data modify block 1000 255 1000 Text1 set value '{"color":"dark_red","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 5 run data modify block 1000 255 1000 Text1 set value '{"color":"dark_purple","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 6 run data modify block 1000 255 1000 Text1 set value '{"color":"gold","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 7 run data modify block 1000 255 1000 Text1 set value '{"color":"gray","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 8 run data modify block 1000 255 1000 Text1 set value '{"color":"dark_gray","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 9 run data modify block 1000 255 1000 Text1 set value '{"color":"blue","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 10 run data modify block 1000 255 1000 Text1 set value '{"color":"green","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 11 run data modify block 1000 255 1000 Text1 set value '{"color":"aqua","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 12 run data modify block 1000 255 1000 Text1 set value '{"color":"red","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 13 run data modify block 1000 255 1000 Text1 set value '{"color":"light_purple","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 14 run data modify block 1000 255 1000 Text1 set value '{"color":"yellow","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
execute if score #rc_text_color kbt.settings matches 15 run data modify block 1000 255 1000 Text1 set value '{"color":"white","storage":"kbt:route_text","nbt":"pending.element.text.value"}'
data modify storage kbt:route_text rendered set from block 1000 255 1000 Text1
execute store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.bold
execute if score #rc_text_style kbt.settings matches 0 run data modify block 1000 255 1000 Text1 set value '{"bold":false,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
execute if score #rc_text_style kbt.settings matches 1 run data modify block 1000 255 1000 Text1 set value '{"bold":true,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
data modify storage kbt:route_text rendered set from block 1000 255 1000 Text1
execute store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.italic
execute if score #rc_text_style kbt.settings matches 0 run data modify block 1000 255 1000 Text1 set value '{"italic":false,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
execute if score #rc_text_style kbt.settings matches 1 run data modify block 1000 255 1000 Text1 set value '{"italic":true,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
data modify storage kbt:route_text rendered set from block 1000 255 1000 Text1
execute store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.underlined
execute if score #rc_text_style kbt.settings matches 0 run data modify block 1000 255 1000 Text1 set value '{"underlined":false,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
execute if score #rc_text_style kbt.settings matches 1 run data modify block 1000 255 1000 Text1 set value '{"underlined":true,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
data modify storage kbt:route_text rendered set from block 1000 255 1000 Text1
execute store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.strikethrough
execute if score #rc_text_style kbt.settings matches 0 run data modify block 1000 255 1000 Text1 set value '{"strikethrough":false,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
execute if score #rc_text_style kbt.settings matches 1 run data modify block 1000 255 1000 Text1 set value '{"strikethrough":true,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
data modify storage kbt:route_text rendered set from block 1000 255 1000 Text1
execute store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.obfuscated
execute if score #rc_text_style kbt.settings matches 0 run data modify block 1000 255 1000 Text1 set value '{"obfuscated":false,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
execute if score #rc_text_style kbt.settings matches 1 run data modify block 1000 255 1000 Text1 set value '{"obfuscated":true,"interpret":true,"storage":"kbt:route_text","nbt":"rendered"}'
data modify storage kbt:route_text rendered set from block 1000 255 1000 Text1
