scoreboard players set #ss_player_job kbt.settings 1
scoreboard players set #ss_has_cell kbt.settings 1
scoreboard players set #ss_player_ticks kbt.settings 0
tag @s add kbt.ss_player_job
data modify storage kbt:savestate resume_pos set from entity @s Pos
data modify storage kbt:savestate resume_rotation set from entity @s Rotation
execute unless data entity @s ActiveEffects[{Id:12b}] run tag @s add kbt.ss_fire_protection
effect give @s minecraft:fire_resistance 5 0 true
summon minecraft:armor_stand 1005.5 255 -1006.5 {Tags:["kbt.ss_player_cell"],Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b}
setblock 1005 254 -1007 minecraft:bedrock
execute if data storage kbt:savestate current{burning:1b} run setblock 1005 255 -1007 minecraft:fire
execute unless data storage kbt:savestate current{burning:1b} run setblock 1005 255 -1007 minecraft:cauldron[level=3]
gamemode adventure @s
tp @s 1005.5 255 -1006.5
title @s actionbar {"text":"Restoring player state","color":"aqua"}
