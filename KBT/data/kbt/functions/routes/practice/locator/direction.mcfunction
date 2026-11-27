execute unless entity @e[type=minecraft:armor_stand,tag=kbt.rp_compass] run summon minecraft:armor_stand ~ ~ ~ {Tags:["kbt.rp_compass"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
tp @e[type=minecraft:armor_stand,tag=kbt.rp_compass,limit=1] ~ ~ ~ facing entity @e[type=minecraft:armor_stand,tag=kbt.rp_marker,tag=kbt.rp_target,limit=1] feet
execute store result score #loc_angle kbt.settings run data get entity @e[type=minecraft:armor_stand,tag=kbt.rp_compass,limit=1] Rotation[0]
execute store result score #loc_yaw kbt.settings run data get entity @s Rotation[0]
scoreboard players set #loc_full kbt.settings 360
scoreboard players set #loc_sector kbt.settings 45
scoreboard players operation #loc_angle kbt.settings -= #loc_yaw kbt.settings
scoreboard players operation #loc_angle kbt.settings %= #loc_full kbt.settings
scoreboard players add #loc_angle kbt.settings 382
scoreboard players operation #loc_angle kbt.settings %= #loc_full kbt.settings
scoreboard players operation #loc_angle kbt.settings /= #loc_sector kbt.settings
execute if score #loc_angle kbt.settings matches 0 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"↑","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 1 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"↗","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 2 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"→","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 3 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"↘","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 4 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"↓","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 5 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"↙","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 6 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"←","color":"yellow"}]'
execute if score #loc_angle kbt.settings matches 7 run data modify storage kbt:route_timer display.locator set value '[{"text":" | ","color":"gray"},{"text":"↖","color":"yellow"}]'
