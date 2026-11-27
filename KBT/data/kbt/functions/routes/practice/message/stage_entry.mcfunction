data remove storage kbt:route_practice message_output
data modify storage kbt:route_practice message_output set from storage kbt:route_practice element.text.json
execute if data storage kbt:route_practice message_output run tellraw @a[tag=kbt.rp_runner] {"nbt":"message_output","storage":"kbt:route_practice","interpret":true}
execute if data storage kbt:route_practice message_output unless score #rp_message_sound kbt.settings matches 0 as @a[tag=kbt.rp_runner] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.2
