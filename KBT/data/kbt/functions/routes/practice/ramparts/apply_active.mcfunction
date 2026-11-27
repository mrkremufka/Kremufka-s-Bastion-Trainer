execute store result score #rr_tile_drops kbt.settings run gamerule doTileDrops
execute store result score #rr_mob_loot kbt.settings run gamerule doMobLoot
gamerule doTileDrops false
gamerule doMobLoot false
scoreboard players operation #rr_mobs kbt.settings = bastion_mobs bastion.settings
scoreboard players operation #rr_labels kbt.settings = id_piglins bastion.settings
scoreboard players set bastion_mobs bastion.settings 0
execute if data storage kbt:route_practice route.mobs[{type:"minecraft:piglin"}] run scoreboard players set bastion_mobs bastion.settings 1
execute if score #rp_mob_policy kbt.settings matches 1 if score #rp_run_piglins kbt.settings matches 1 run scoreboard players set bastion_mobs bastion.settings 1
execute if score #rp_mob_policy kbt.settings matches 1 if score #rp_run_piglins kbt.settings matches 2 run scoreboard players set bastion_mobs bastion.settings 0
scoreboard players set id_piglins bastion.settings 1

execute if data storage kbt:route_practice route{bastion:0} if data storage kbt:route_practice route.setup{bridge_left:2} positioned 1002.5 154 984.5 run function kbt:routes/practice/ramparts/bridge
execute if data storage kbt:route_practice route{bastion:0} if data storage kbt:route_practice route.setup{bridge_right:2} positioned 1002.5 154 1032.5 run function kbt:routes/practice/ramparts/bridge
execute if data storage kbt:route_practice route{bastion:2} if data storage kbt:route_practice route.setup{h_left:3} positioned 984.5 153 1034.5 run function kbt:routes/practice/ramparts/housing
execute if data storage kbt:route_practice route{bastion:3} if data storage kbt:route_practice route.setup{s_left_ramp:3} positioned 982.5 153 1032.5 run function kbt:routes/practice/ramparts/stables
execute if data storage kbt:route_practice route{bastion:3} if data storage kbt:route_practice route.setup{s_mid_ramp:3} positioned 984.5 153 1016.5 run function kbt:routes/practice/ramparts/stables
execute if data storage kbt:route_practice route{bastion:3} if data storage kbt:route_practice route.setup{s_right_ramp:3} positioned 982.5 153 1000.5 run function kbt:routes/practice/ramparts/stables

scoreboard players operation bastion_mobs bastion.settings = #rr_mobs kbt.settings
scoreboard players operation id_piglins bastion.settings = #rr_labels kbt.settings
execute if score #rr_tile_drops kbt.settings matches 1 run gamerule doTileDrops true
execute if score #rr_mob_loot kbt.settings matches 1 run gamerule doMobLoot true
function kbt:routes/practice/mobs/capture
data modify storage kbt:route_practice rampart_mobs set from storage kbt:route_mobs captured
function kbt:debug/initialize
