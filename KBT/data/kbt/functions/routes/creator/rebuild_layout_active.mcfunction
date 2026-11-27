tellraw @s {"text":"Rebuilding the saved route's bastion with current rampart settings Random options can produce a different variant; route tasks and checkpoints are kept","color":"yellow"}
execute store result score #rp_rebuild_type kbt.settings run data get storage kbt:route_runtime found.bastion
execute in minecraft:the_nether run forceload add 936 936 1063 1063
execute in minecraft:the_nether run tp @s 1000 200 1000 0 0
difficulty easy
scoreboard players operation #rc_rebuild_floor kbt.settings = #floor kbt.settings
execute if data storage kbt:route_runtime found.setup.floor store result score #floor kbt.settings run data get storage kbt:route_runtime found.setup.floor
execute if score #rp_rebuild_type kbt.settings matches 0 in minecraft:the_nether run function kbt:arena/generate/bridge
execute if score #rp_rebuild_type kbt.settings matches 1 in minecraft:the_nether run function kbt:arena/generate/treasure
execute if score #rp_rebuild_type kbt.settings matches 2 in minecraft:the_nether run function kbt:arena/generate/housing
execute if score #rp_rebuild_type kbt.settings matches 3 in minecraft:the_nether run function kbt:arena/generate/hoglin_stables
execute if score #run_floor kbt.settings matches 2 run data modify storage kbt:route_practice route set from storage kbt:route_runtime found
execute if score #run_floor kbt.settings matches 2 in minecraft:the_nether run function kbt:arena/buried/route_start
scoreboard players operation #floor kbt.settings = #rc_rebuild_floor kbt.settings
execute store result score @s kbt.rp_bind run data get storage kbt:routes draft.id
function kbt:routes/practice/input/bind
scoreboard players set @s kbt.rp_bind 0
execute if score #rp_job kbt.settings matches 1 run tag @s add kbt.rp_repair
execute unless score #rp_job kbt.settings matches 1 in minecraft:the_nether run tp @s -1000 129 1001 0 0
