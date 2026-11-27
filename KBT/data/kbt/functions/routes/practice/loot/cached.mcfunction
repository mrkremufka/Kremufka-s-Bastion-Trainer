data modify storage kbt:route_loot queue set from storage kbt:route_loot cache.chests
execute if data storage kbt:route_loot queue[0] run function kbt:routes/practice/loot/next
