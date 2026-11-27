scoreboard players set #loc_max kbt.settings -1
execute store result score #loc_px kbt.settings run data get entity @s Pos[0]
execute store result score #loc_py kbt.settings run data get entity @s Pos[1]
execute store result score #loc_pz kbt.settings run data get entity @s Pos[2]
execute as @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_type=2..4,kbt.rp_done=0}] run function kbt:routes/practice/locator/candidate
execute as @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_type=10..11,kbt.rp_done=0}] run function kbt:routes/practice/locator/candidate
execute as @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_type=21,kbt.rp_done=0}] run function kbt:routes/practice/locator/candidate
execute unless entity @e[type=minecraft:armor_stand,tag=kbt.rp_target] run tag @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_type=5},sort=nearest,limit=1] add kbt.rp_target
execute unless entity @e[type=minecraft:armor_stand,tag=kbt.rp_target] run tag @e[type=minecraft:armor_stand,tag=kbt.rp_marker,scores={kbt.rp_type=7},sort=nearest,limit=1] add kbt.rp_target
