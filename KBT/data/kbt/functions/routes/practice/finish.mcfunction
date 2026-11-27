function kbt:routes/practice/hooks/finish
scoreboard players set #rp_active kbt.settings 0
scoreboard players set @s kbt.run 0
tag @s remove kbt.rp_runner
execute in minecraft:the_nether run function kbt:routes/practice/cleanup
function kbt:practice/difficulty
clear @s
execute unless entity @s[tag=kbt.mv_playlist] run function kbt:routes/practice/lobby_teleport
execute if entity @s[tag=kbt.mv_playlist] unless data storage kbt:movement_playlist session.remaining[0] run function kbt:routes/practice/lobby_teleport
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute unless score #rt_phase_summary kbt.settings matches 1 if score #rt_new_pb kbt.settings matches 1 unless score #mv_playlist kbt.settings matches 1 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score #rt_phase_summary kbt.settings matches 1 if score #ph_summary_new_pb kbt.settings matches 1 unless score #mv_playlist kbt.settings matches 1 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if entity @s[tag=kbt.mv_playlist] if score #mv_playlist kbt.settings matches 1 run function kbt:movement/playlist/completed
