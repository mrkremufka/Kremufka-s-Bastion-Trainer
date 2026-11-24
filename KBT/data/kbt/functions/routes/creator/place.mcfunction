advancement revoke @s only kbt:routes/place_tool
scoreboard players set #rc_tool kbt.settings 19
execute at @s run function kbt:routes/creator/ray/start
execute if score @s kbt.creator matches 1 if score @s kbt.rc_cd matches 0 run function kbt:routes/creator/use_held
