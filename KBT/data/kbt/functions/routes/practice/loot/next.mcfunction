data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] Pos set from storage kbt:route_loot queue[0].pos
data modify storage kbt:route_loot entry set from storage kbt:route_loot queue[0]
execute at @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] if block ~ ~ ~ #kbt:route_loot_chests run function kbt:routes/practice/loot/write
data remove storage kbt:route_loot queue[0]
execute if data storage kbt:route_loot queue[0] run function kbt:routes/practice/loot/next
