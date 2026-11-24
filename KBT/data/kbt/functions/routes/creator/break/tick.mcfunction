scoreboard players set #rc_broken kbt.settings 0
execute as @e[type=minecraft:armor_stand,tag=kbt.rc_break] at @s if block ~ ~ ~ #kbt:routes/empty unless block 1004 255 -997 #kbt:routes/empty run function kbt:routes/creator/break/restore
execute if score #rc_broken kbt.settings matches 1 if score @s kbt.rc_cd matches 0 run function kbt:routes/creator/use_held
function kbt:routes/creator/break/reset
scoreboard players set #rc_tool kbt.settings 20
function kbt:routes/creator/ray/start
