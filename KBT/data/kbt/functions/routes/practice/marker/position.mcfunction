execute store result score #rp_px kbt.settings run data get storage kbt:route_practice element.pos[0] 10000
execute store result score #rp_ax kbt.settings run data get storage kbt:route_practice route.anchor.pos[0] 10000
scoreboard players operation #rp_px kbt.settings += #rp_ax kbt.settings
execute store result storage kbt:route_practice world_pos[0] double 0.0001 run scoreboard players get #rp_px kbt.settings
execute store result score #rp_py kbt.settings run data get storage kbt:route_practice element.pos[1] 10000
execute store result score #rp_ay kbt.settings run data get storage kbt:route_practice route.anchor.pos[1] 10000
scoreboard players operation #rp_py kbt.settings += #rp_ay kbt.settings
execute store result storage kbt:route_practice world_pos[1] double 0.0001 run scoreboard players get #rp_py kbt.settings
execute store result score #rp_pz kbt.settings run data get storage kbt:route_practice element.pos[2] 10000
execute store result score #rp_az kbt.settings run data get storage kbt:route_practice route.anchor.pos[2] 10000
scoreboard players operation #rp_pz kbt.settings += #rp_az kbt.settings
execute store result storage kbt:route_practice world_pos[2] double 0.0001 run scoreboard players get #rp_pz kbt.settings
execute if data storage kbt:route_practice element{type:21} run function kbt:routes/practice/gold/position
