data modify storage kbt:route_runtime hit_pos set from entity @e[type=minecraft:armor_stand,tag=kbt.rc_ray,limit=1] Pos
execute if score #rc_tool kbt.settings matches 2..3 if data storage kbt:route_runtime previous run data modify entity @e[type=minecraft:armor_stand,tag=kbt.rc_ray,limit=1] Pos set from storage kbt:route_runtime previous
execute if score #rc_tool kbt.settings matches 10 if data storage kbt:route_runtime previous run data modify entity @e[type=minecraft:armor_stand,tag=kbt.rc_ray,limit=1] Pos set from storage kbt:route_runtime previous
execute if score #rc_tool kbt.settings matches 19 as @e[type=minecraft:armor_stand,tag=kbt.rc_ray,limit=1] at @s if block ~ ~ ~ #kbt:routes/placed run setblock ~ ~ ~ minecraft:air
execute if score #rc_tool kbt.settings matches 20 as @e[type=minecraft:armor_stand,tag=kbt.rc_ray,limit=1] at @s run function kbt:routes/creator/break/track
execute as @e[type=minecraft:armor_stand,tag=kbt.rc_ray,limit=1] at @s run function kbt:routes/creator/ray/validate
