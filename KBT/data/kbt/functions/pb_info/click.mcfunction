scoreboard players set @e[type=minecraft:pufferfish,tag=kbt.pb_info_hitbox,distance=..1] kbt.ui_cd 10
data merge entity @s {Health:1024.0f,HurtTime:0s,Motion:[0.0d,0.0d,0.0d]}
execute if entity @s[tag=kbt.pb_route] as @p[distance=..8] at @s run function kbt:pb_info/message_route
execute if entity @s[tag=kbt.pb_movement] as @p[distance=..8] at @s run function kbt:pb_info/message_movement
