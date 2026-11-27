execute store result score #rl_x kbt.settings run data get entity @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] Pos[0]
execute store result score #rl_y kbt.settings run data get entity @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] Pos[1]
execute store result score #rl_z kbt.settings run data get entity @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] Pos[2]
function kbt:routes/practice/loot/fallback_positions
