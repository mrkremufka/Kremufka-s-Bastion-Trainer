function kbt:arena/mutation/begin
data modify storage kbt:route_loot candidate set value {schema:1,id:0,bastion:-1,layout:{},setup:{}}
data modify storage kbt:route_loot candidate.id set from storage kbt:route_practice route.id
data modify storage kbt:route_loot candidate.bastion set from storage kbt:route_practice route.bastion
data modify storage kbt:route_loot candidate.layout set from storage kbt:route_practice route.layout
data modify storage kbt:route_loot candidate.setup set from storage kbt:route_practice route.setup
execute store result score #rl_changed kbt.settings run data modify storage kbt:route_loot cache.key set from storage kbt:route_loot candidate
execute unless data storage kbt:route_loot cache.chests run scoreboard players set #rl_changed kbt.settings 1
execute if score #rr_active kbt.settings matches 1 run scoreboard players set #rl_changed kbt.settings 1
kill @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor]
summon minecraft:armor_stand 1000.0 129.0 1000.0 {Tags:["kbt.rp_loot_cursor"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
scoreboard players set #rl_kind kbt.settings -1
execute store result score #rl_kind kbt.settings run data get storage kbt:route_practice route.bastion
execute if score #rl_changed kbt.settings matches 1 run function kbt:routes/practice/loot/scan
execute unless score #rl_changed kbt.settings matches 1 run function kbt:routes/practice/loot/cached
kill @e[type=minecraft:armor_stand,tag=kbt.rp_loot_cursor]
data remove storage kbt:route_loot candidate
data remove storage kbt:route_loot entry
data remove storage kbt:route_loot queue
function kbt:arena/mutation/end
