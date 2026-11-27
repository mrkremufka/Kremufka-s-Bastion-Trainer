execute in minecraft:overworld as @a[tag=kbt.rp_context,tag=!kbt.rp_phase_respawn,distance=0..,nbt=!{Health:0.0f}] at @s run function kbt:routes/practice/return_lobby
execute in minecraft:overworld as @a[tag=!kbt.rp_context,tag=!kbt.rp_respawn,tag=!kbt.gp_respawn,tag=!kbt.cs_creator,distance=0..,nbt=!{Health:0.0f}] in minecraft:the_nether run tp @s 21 129 29 0 0
