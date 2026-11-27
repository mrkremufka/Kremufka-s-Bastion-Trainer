scoreboard players set #rp_particle kbt.settings 0
execute at @a[tag=kbt.rp_runner,limit=1] as @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_done=0},distance=..48,sort=nearest,limit=32] at @s run function kbt:routes/practice/preview/particle
