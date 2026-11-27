scoreboard players set @s kbt.cs_save 0
scoreboard players set #cs_save_ok kbt.settings 0
execute if entity @s[type=minecraft:player,gamemode=survival,tag=!kbt.rp_context,tag=!kbt.mv_context,scores={kbt.run=1..2,kbt.gp_timer=1..2},nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] if score #run_type kbt.settings matches 0..3 run scoreboard players set #cs_save_ok kbt.settings 1
execute store result score #cs_x kbt.settings run data get entity @s Pos[0] 1
execute store result score #cs_y kbt.settings run data get entity @s Pos[1] 1
execute store result score #cs_z kbt.settings run data get entity @s Pos[2] 1
execute unless score #cs_x kbt.settings matches 936..1063 run scoreboard players set #cs_save_ok kbt.settings 0
execute unless score #cs_y kbt.settings matches 129..255 run scoreboard players set #cs_save_ok kbt.settings 0
execute unless score #cs_z kbt.settings matches 936..1063 run scoreboard players set #cs_save_ok kbt.settings 0
execute if score #cs_save_ok kbt.settings matches 1 run function kbt:practice/spawn/custom/save_ready
execute if score #cs_save_ok kbt.settings matches 0 run tellraw @s {"text":"Custom spawnpoints can only be saved inside the bastion arena during General Practice","color":"red"}
