effect clear @s minecraft:fire_resistance
effect clear @s minecraft:saturation
tag @s remove kbt.in_lobby
tag @s remove kbt.gp_respawn
scoreboard players set @a kbt.run 0
scoreboard players set @a kbt.gp_timer 0
execute store result score @s kbt.start_x run data get entity @s Pos[0] 1000
execute store result score @s kbt.start_z run data get entity @s Pos[2] 1000
scoreboard players set @s kbt.jump 0
scoreboard players set @s kbt.climb 0
function kbt:practice/movement/mining/reset
scoreboard players set @s kbt.run 1
