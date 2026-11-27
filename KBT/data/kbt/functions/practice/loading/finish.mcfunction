schedule clear kbt:practice/loading/tick
function kbt:practice/scenario/capture_settings
data modify storage kbt:general_practice menu set from storage kbt:general_practice settings
data modify storage kbt:general_practice settings set from storage kbt:general_practice loading.settings
function kbt:practice/scenario/apply_settings
execute store result score #run_type kbt.settings run data get storage kbt:general_practice loading.bastion
execute store result score #run_floor kbt.settings run data get storage kbt:general_practice loading.floor
execute store result score #gp_replay kbt.settings run data get storage kbt:general_practice loading.replay
scoreboard players set #gp_loading kbt.settings 0
title @a[tag=kbt.gp_loading] actionbar {"text":""}
tag @a remove kbt.gp_loading
gamemode survival @a[tag=kbt.start_player]
effect give @a[tag=kbt.start_player] minecraft:instant_health 1 10 true
execute as @a[tag=kbt.start_player] run function kbt:loadout/apply
execute if score #run_type kbt.settings matches 0 in minecraft:the_nether run function kbt:practice/spawn/bridge
execute if score #run_type kbt.settings matches 1 in minecraft:the_nether run function kbt:practice/spawn/treasure
execute if score #run_type kbt.settings matches 2 in minecraft:the_nether run function kbt:practice/spawn/housing
execute if score #run_type kbt.settings matches 3 in minecraft:the_nether run function kbt:practice/spawn/stables
execute unless score #gp_replay kbt.settings matches 1 run function kbt:practice/scenario/capture_result
data modify storage kbt:general_practice settings set from storage kbt:general_practice menu
function kbt:practice/scenario/apply_settings
data remove storage kbt:general_practice menu
data remove storage kbt:general_practice settings
scoreboard players set #gp_replay kbt.settings 0
function kbt:arena/drop_cleanup/begin
execute as @a[tag=kbt.start_player] at @s run function kbt:practice/movement/arm
execute as @a[tag=kbt.start_player] in minecraft:the_nether at @s run function kbt:practice/extinguish
execute as @a[tag=kbt.start_player] run function kbt:practice/timer/arm
tag @a remove kbt.start_player

data remove storage kbt:general_practice loading
