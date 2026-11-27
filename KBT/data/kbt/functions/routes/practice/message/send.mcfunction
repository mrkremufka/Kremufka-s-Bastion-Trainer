data remove storage kbt:route_practice message_output
data modify storage kbt:route_practice message_output set from entity @s ArmorItems[0].tag.element.text.json
execute if data storage kbt:route_practice message_output run tellraw @a[tag=kbt.rp_runner] {"nbt":"message_output","storage":"kbt:route_practice","interpret":true}
execute if data storage kbt:route_practice message_output unless score #rp_message_sound kbt.settings matches 0 as @a[tag=kbt.rp_runner] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1.2
scoreboard players operation #rp_message_group kbt.settings = @s kbt.rp_msg
execute as @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_type=12,kbt.rp_done=0}] if score @s kbt.rp_msg = #rp_message_group kbt.settings run scoreboard players set @s kbt.rp_done 1
