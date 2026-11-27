execute as @e[type=minecraft:hoglin,x=936,y=128,z=936,dx=127,dy=127,dz=127,nbt=!{DeathLootTable:"minecraft:empty"}] run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute if score #rp_run_piglins kbt.settings matches 2 run kill @e[type=minecraft:piglin,x=936,y=128,z=936,dx=127,dy=127,dz=127]
execute if score #rp_run_hoglins kbt.settings matches 2 run function kbt:routes/practice/hoglins/remove
execute if score #rp_run_piglins kbt.settings matches 0 if score #rp_piglin_toggled kbt.settings matches 1 if score #rp_piglin_enabled kbt.settings matches 0 run kill @e[type=minecraft:piglin,x=936,y=128,z=936,dx=127,dy=127,dz=127]
execute if score #rp_run_hoglins kbt.settings matches 0 if score #rp_hoglin_toggled kbt.settings matches 1 if score #rp_hoglin_enabled kbt.settings matches 0 run function kbt:routes/practice/hoglins/remove
