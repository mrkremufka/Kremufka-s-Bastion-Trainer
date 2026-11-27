execute if score #ss_wait kbt.settings matches 1 in minecraft:the_nether run function kbt:savestate/cancel
data modify storage kbt:custom_spawns creator set value {phase:0}
execute if score #gp_loading kbt.settings matches 1.. run function kbt:practice/loading/cancel
execute store result storage kbt:custom_spawns creator.type int 1 run scoreboard players get #gp_bastion kbt.settings
function kbt:practice/scenario/capture_settings
data modify storage kbt:custom_spawns creator.settings set from storage kbt:general_practice settings
data remove storage kbt:general_practice settings
scoreboard players set #cs_job kbt.settings 1
scoreboard players set @s kbt.cs_edit 0
scoreboard players enable @s kbt.cs_edit
tag @s add kbt.cs_creator
execute in minecraft:the_nether run forceload add 936 936 1063 1063
schedule function kbt:practice/spawn/custom/create/generate 1t replace
tellraw @s {"text":"Preparing your bastion for a custom spawnpoint","color":"yellow"}
