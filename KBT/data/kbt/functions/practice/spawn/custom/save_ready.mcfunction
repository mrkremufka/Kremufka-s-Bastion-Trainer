scoreboard players operation #cs_type kbt.settings = #run_type kbt.settings
function kbt:practice/spawn/custom/list
scoreboard players add #cs_count kbt.settings 1
data modify storage kbt:custom_spawns entry set value {}
data modify storage kbt:custom_spawns entry.pos set from entity @s Pos
data modify storage kbt:custom_spawns entry.rotation set from entity @s Rotation
execute store result storage kbt:custom_spawns entry.id int 1 run scoreboard players get #cs_count kbt.settings
scoreboard players set #cs_saved kbt.settings 0
execute in minecraft:the_nether if block -1004 254 1003 minecraft:air if block -1004 255 1003 minecraft:air run function kbt:practice/spawn/custom/save_commit
execute unless score #cs_saved kbt.settings matches 1 run tellraw @s {"text":"The temporary text helper is unavailable; the spawnpoint was not saved","color":"red"}
data remove storage kbt:custom_spawns entry
data remove storage kbt:custom_spawns queue
