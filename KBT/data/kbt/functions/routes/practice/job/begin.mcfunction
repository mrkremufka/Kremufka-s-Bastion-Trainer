execute if score #ss_wait kbt.settings matches 1 in minecraft:the_nether run function kbt:savestate/cancel
execute if score #gp_loading kbt.settings matches 1.. run function kbt:practice/loading/cancel
scoreboard players add #rp_job_epoch kbt.settings 1
scoreboard players set #rp_fast_job kbt.settings 0
execute if score #rp_restart kbt.settings matches 1 if score #rp_request kbt.settings matches 2 if data storage kbt:route_practice candidate.layout{mode:"snapshot",schema:1} run scoreboard players set #rp_fast_job kbt.settings 1
execute if score #rp_request kbt.settings matches 1 unless data storage kbt:share importing in minecraft:the_nether run function kbt:routes/practice/mobs/capture
execute if score #rp_request kbt.settings matches 1 unless data storage kbt:share importing if data storage kbt:route_mobs captured[0] run data modify storage kbt:route_practice candidate.mobs set from storage kbt:route_mobs captured
function kbt:routes/practice/stop
scoreboard players set #rp_finishing kbt.settings 0
execute if score #rp_request kbt.settings matches 2 if score @s kbt.creator matches 1 run function kbt:routes/creator/exit
schedule clear kbt:practice/generate
schedule clear kbt:arena/generate_selected
tag @s remove kbt.start_player
scoreboard players set @s kbt.run 0
function kbt:practice/clear_drops
tag @a remove kbt.rp_owner
tag @s add kbt.rp_owner
execute if entity @s[gamemode=survival] run scoreboard players set @s kbt.rp_mode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s kbt.rp_mode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s kbt.rp_mode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s kbt.rp_mode 3
execute unless data storage kbt:share importing run gamemode spectator @s
data modify storage kbt:route_practice job_record set from storage kbt:route_practice candidate
scoreboard players operation #rp_job kbt.settings = #rp_request kbt.settings
scoreboard players set #rp_tile kbt.settings 0
scoreboard players set #rp_retry kbt.settings 0
scoreboard players set #rp_elapsed kbt.settings 0
scoreboard players set #rp_wait kbt.settings 0

function kbt:routes/practice/job/select_bank
execute unless data storage kbt:route_practice job_record.layout{mode:"builtin"} run function kbt:routes/practice/job/position
execute in minecraft:the_nether run forceload add 936 936 1063 1063
execute unless data storage kbt:route_practice job_record.layout{mode:"builtin"} at @e[type=minecraft:armor_stand,tag=kbt.rp_snapshot,limit=1] run forceload add ~ ~ ~127 ~127
scoreboard players set #rp_in_place kbt.settings 0
execute if score #rp_job kbt.settings matches 2 if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set #rp_in_place kbt.settings 1
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] if score #rp_job kbt.settings matches 2 run function kbt:routes/practice/lobby_teleport
execute if score #rp_job kbt.settings matches 2 in minecraft:the_nether run function kbt:routes/practice/job/fast_clear
execute if score #rp_job kbt.settings matches 1 if score #lava_wait kbt.settings matches 1.. run scoreboard players operation #rp_wait kbt.settings = #lava_wait kbt.settings
execute if score #rp_job kbt.settings matches 1 if score #lava_wait kbt.settings matches 1.. run scoreboard players add #rp_wait kbt.settings 1
scoreboard players set #rp_hud_clock kbt.settings 3
scoreboard players set #rp_hud_seen_phase kbt.settings -1
function kbt:routes/practice/job/progress/tick

