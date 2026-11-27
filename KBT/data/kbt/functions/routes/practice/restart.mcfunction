execute if entity @s[type=minecraft:player] if data storage kbt:route_practice last_id store result score #rc_target kbt.settings run data get storage kbt:route_practice last_id
execute if entity @s[type=minecraft:player] if data storage kbt:route_practice last_id run scoreboard players set #rp_request kbt.settings 2
scoreboard players set #mpl_check_restart_ok kbt.settings 1
execute if entity @s[type=minecraft:player] if data storage kbt:route_practice last_id unless score #rp_job kbt.settings matches 1.. if score #mv_playlist kbt.settings matches 1 if data storage kbt:movement_playlist session{active:1b,kind:"saved"} run function kbt:movement/playlists/restart_check
scoreboard players set #rp_restart kbt.settings 1
execute if entity @s[type=minecraft:player] if data storage kbt:route_practice last_id if score #mpl_check_restart_ok kbt.settings matches 1 run function kbt:routes/practice/request
scoreboard players set #rp_restart kbt.settings 0
execute if entity @s[type=minecraft:player] unless data storage kbt:route_practice last_id run tellraw @s {"text":"No previous Route Practice to restart","color":"red"}
scoreboard players enable @s kbt.rp_action
