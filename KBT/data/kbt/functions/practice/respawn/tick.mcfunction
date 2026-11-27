execute as @a[tag=!kbt.rp_context,scores={kbt.gp_timer=1..2,kbt.deaths=1..}] run function kbt:practice/respawn/death
execute as @a[tag=!kbt.rp_context,scores={kbt.gp_timer=1..2},nbt={Health:0.0f}] run function kbt:practice/respawn/death
execute as @a[tag=kbt.gp_respawn,nbt=!{Health:0.0f}] at @s run function kbt:practice/respawn/return
