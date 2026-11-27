tp @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] ~ ~ ~
data modify storage kbt:route_loot entry set value {pos:[],table:"minecraft:chests/bastion_other"}
data modify storage kbt:route_loot entry.pos set from entity @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor,limit=1] Pos
execute if data block ~ ~ ~ LootTable run data modify storage kbt:route_loot entry.table set from block ~ ~ ~ LootTable
execute unless data block ~ ~ ~ LootTable run function kbt:routes/practice/loot/fallback
data modify storage kbt:route_loot cache.chests append from storage kbt:route_loot entry
function kbt:routes/practice/loot/write
