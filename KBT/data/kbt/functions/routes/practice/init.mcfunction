data remove storage kbt:route_loot cache
execute in minecraft:the_nether run kill @e[type=minecraft:armor_stand,tag=kbt.rp_compass]
scoreboard objectives add kbt.rp_start trigger
function kbt:routes/practice/phase/stats/init
scoreboard players set #rp_navigation kbt.settings 0
scoreboard objectives add kbt.rp_bind trigger
scoreboard objectives add kbt.rp_action trigger
scoreboard objectives add kbt.rp_type dummy
scoreboard objectives add kbt.rp_done dummy
scoreboard objectives add kbt.rp_ready dummy
scoreboard objectives add kbt.rp_radius dummy
scoreboard objectives add kbt.rp_mode dummy
scoreboard objectives add kbt.rp_msg dummy
scoreboard objectives add kbt.rp_gold dummy
scoreboard players set #arena_migrate kbt.settings 0
execute unless score #arena_ready kbt.settings matches 0..1 if score #run_type kbt.settings matches 0..3 run scoreboard players set #arena_migrate kbt.settings 1
execute if score #arena_migrate kbt.settings matches 1 in minecraft:the_nether run forceload add 936 936 1063 1063
execute unless score #arena_ready kbt.settings matches 0..1 if score #run_type kbt.settings matches 0..3 in minecraft:the_nether unless block 1000 128 1000 #kbt:routes/empty run scoreboard players operation #arena_type kbt.settings = #run_type kbt.settings
execute unless score #arena_ready kbt.settings matches 0..1 if score #run_type kbt.settings matches 0..3 in minecraft:the_nether unless block 1000 128 1000 #kbt:routes/empty run scoreboard players set #arena_ready kbt.settings 1
execute unless score #arena_ready kbt.settings matches 0..1 run scoreboard players set #arena_ready kbt.settings 0
execute if score #arena_ready kbt.settings matches 1 run scoreboard players set #arena_migrate kbt.settings 0
title @a[tag=kbt.rp_owner] actionbar {"text":""}
scoreboard players set #rp_finishing kbt.settings 0
execute in minecraft:the_nether run function kbt:routes/practice/cleanup
scoreboard players set @a[tag=kbt.rp_runner] kbt.run 0
tag @a remove kbt.rp_runner
execute as @a[tag=kbt.rp_owner] run function kbt:routes/practice/job/restore_mode
execute if score #rp_fast_job kbt.settings matches 1 as @a[tag=kbt.rp_owner] run function kbt:routes/practice/job/fast_return
execute unless score #rp_fast_job kbt.settings matches 1 if score #rp_in_place kbt.settings matches 1 as @a[tag=kbt.rp_owner] run function kbt:routes/practice/job/fast_return
scoreboard players set #rp_in_place kbt.settings 0
execute as @a[tag=kbt.rp_repair] run function kbt:routes/creator/rebuild_layout_return
tag @a remove kbt.rp_owner
scoreboard players set #rp_job kbt.settings 0
execute if data storage kbt:route_practice regeneration as @a[tag=kbt.rp_regen] run function kbt:routes/practice/regenerate/abort
scoreboard players set #rp_restart kbt.settings 0
scoreboard players set #rp_fast_job kbt.settings 0
data remove storage kbt:route_practice open_editor_after_bind
data remove storage kbt:route_practice play_after_bind
data remove storage kbt:route_practice edit_after_restore
data remove storage kbt:route_practice next_phase
scoreboard players set #rp_active kbt.settings 0
scoreboard players enable @a kbt.rp_start
scoreboard players enable @a kbt.rp_bind
scoreboard players enable @a kbt.rp_action
schedule function kbt:routes/practice/recover 5s replace
