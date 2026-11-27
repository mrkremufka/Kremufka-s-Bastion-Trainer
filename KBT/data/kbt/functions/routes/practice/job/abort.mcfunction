execute if score #rp_finishing kbt.settings matches 1 run function kbt:arena/lava_fix/cancel
title @a[tag=kbt.rp_owner] actionbar {"text":""}
scoreboard players set #rp_finishing kbt.settings 0
execute as @a[tag=kbt.rp_owner] run function kbt:routes/practice/job/restore_mode
function kbt:movement/playlist/cancel
execute if data storage kbt:route_setup edit_generation{queued:1b} if entity @s[tag=kbt.rp_generation] run function kbt:routes/creator/generation/cancel
tag @s remove kbt.rp_generation
execute if score #rp_fast_job kbt.settings matches 1 as @a[tag=kbt.rp_owner] run function kbt:routes/practice/job/fast_return
execute unless score #rp_fast_job kbt.settings matches 1 if score #rp_in_place kbt.settings matches 1 as @a[tag=kbt.rp_owner] run function kbt:routes/practice/job/fast_return
scoreboard players set #rp_in_place kbt.settings 0
execute as @a[tag=kbt.rp_repair] run function kbt:routes/creator/rebuild_layout_return
data remove storage kbt:route_practice play_after_bind
data remove storage kbt:route_practice edit_after_restore
data remove storage kbt:route_practice open_editor_after_bind
data remove storage kbt:route_practice next_phase
tellraw @a[tag=kbt.rp_owner] {"text":"Layout copy cancelled/failed Committed layout metadata was kept; retry the operation if chunks were still loading","color":"red"}
tag @a remove kbt.rp_owner
scoreboard players set #rp_job kbt.settings 0
execute in minecraft:the_nether run function kbt:routes/practice/cleanup
execute if data storage kbt:route_practice regeneration as @a[tag=kbt.rp_regen] run function kbt:routes/practice/regenerate/abort

execute if data storage kbt:share importing run function kbt:share/import/cancel
