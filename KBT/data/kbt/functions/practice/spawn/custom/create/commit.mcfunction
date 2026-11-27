execute store result score #cs_type kbt.settings run data get storage kbt:custom_spawns creator.type
function kbt:practice/spawn/custom/list
scoreboard players add #cs_count kbt.settings 1
data modify storage kbt:custom_spawns entry set from storage kbt:custom_spawns creator.entry
data modify storage kbt:custom_spawns entry.name set from storage kbt:custom_spawns creator.name
execute store result storage kbt:custom_spawns entry.id int 1 run scoreboard players get #cs_count kbt.settings
scoreboard players set #cs_saved kbt.settings 0
execute in minecraft:the_nether if block -1004 254 1003 minecraft:air if block -1004 255 1003 minecraft:air run function kbt:practice/spawn/custom/create/resolve_name
execute unless score #cs_saved kbt.settings matches 1 run tellraw @s {"text":"The temporary text helper is unavailable Your position and name are kept; try Save Spawnpoint again","color":"yellow"}
data remove storage kbt:custom_spawns entry
data remove storage kbt:custom_spawns queue
execute if score #cs_saved kbt.settings matches 1 run function kbt:practice/spawn/custom/create/exit
