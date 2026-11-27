execute if score #ss_wait kbt.settings matches 1 in minecraft:the_nether run function kbt:savestate/cancel
tag @s remove kbt.gp_respawn
execute if score #gp_loading kbt.settings matches 1.. run function kbt:practice/loading/cancel
execute if score #cs_job kbt.settings matches 1..2 if entity @s[tag=kbt.cs_creator] run function kbt:practice/spawn/custom/create/exit
scoreboard players set #gp_replay kbt.settings 0
scoreboard players set #gp_completed kbt.settings 0
execute if score @s kbt.gp_timer matches 2 if score @s kbt.run matches 2 if entity @s[gamemode=survival,nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run scoreboard players set #gp_completed kbt.settings 1
function kbt:practice/timer/abort
function kbt:routes/setup/cancel_generation
function kbt:routes/practice/stop
execute if score @s kbt.creator matches 1 run function kbt:routes/creator/exit
schedule clear kbt:practice/generate
schedule clear kbt:arena/generate_selected
tag @a remove kbt.start_player
scoreboard players set @s kbt.run 0
function kbt:practice/clear_drops
gamemode adventure @s
clear @s
execute in minecraft:the_nether run tp @s 21 129 29 0 0
