data modify storage kbt:route_practice route set from storage kbt:route_practice job_record
scoreboard players set #ph_loop kbt.settings 0
scoreboard players set #rp_navigation kbt.settings 0
function kbt:routes/settings/capture_mode
difficulty easy
function kbt:routes/practice/mobs/restore
execute if data storage kbt:route_practice route.setup{ramparts_schema:1} run function kbt:routes/practice/ramparts/apply
execute unless data storage kbt:route_practice route{mode:"movement"} in minecraft:the_nether run function kbt:routes/practice/loot/prepare
data modify storage kbt:route_practice last_id set from storage kbt:route_practice route.id
data modify storage kbt:route_practice stages set from storage kbt:route_practice route.stages
scoreboard players set #rp_stage kbt.settings 0
scoreboard players set #rp_phase kbt.settings 1
execute if data storage kbt:route_practice next_phase store result score #rp_phase kbt.settings run data get storage kbt:route_practice next_phase
data remove storage kbt:route_practice next_phase
scoreboard players set #rp_active kbt.settings 1
scoreboard players set #rp_particle kbt.settings 0
tag @a remove kbt.rp_runner
tag @s add kbt.rp_runner
tag @s add kbt.rp_context
tag @s remove kbt.mv_context
execute if data storage kbt:route_practice route{mode:"movement"} run tag @s add kbt.mv_context
data modify storage kbt:route_practice element set from storage kbt:route_practice route.start
function kbt:routes/practice/marker/spawn
data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] Rotation set from storage kbt:route_practice route.start.rotation
tp @s @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1]
data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] ArmorItems set value [{},{},{},{}]
kill @e[type=minecraft:armor_stand,tag=kbt.rp_start_point]
gamemode survival @s
scoreboard players set #rp_no_time kbt.settings 0
execute in minecraft:the_nether at @s run function kbt:practice/extinguish
effect give @s minecraft:instant_health 1 10 true
function kbt:loadout/apply
function kbt:arena/drop_cleanup/begin
function kbt:practice/clear_drops
function kbt:practice/movement/arm
execute store result score #run_type kbt.settings run data get storage kbt:route_practice route.bastion
scoreboard players operation #arena_type kbt.settings = #run_type kbt.settings
scoreboard players set #arena_ready kbt.settings 1
function kbt:routes/practice/phase/capture
function kbt:routes/practice/stage/begin
execute if score #rp_active kbt.settings matches 1 run function kbt:routes/practice/hooks/start
