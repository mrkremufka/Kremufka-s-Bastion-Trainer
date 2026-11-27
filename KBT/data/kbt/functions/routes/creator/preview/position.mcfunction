execute store result score #rc_px kbt.settings run data get storage kbt:route_runtime element.pos[0] 10000
execute store result score #rc_ax kbt.settings run data get storage kbt:routes draft.anchor.pos[0] 10000
scoreboard players operation #rc_px kbt.settings += #rc_ax kbt.settings
execute store result storage kbt:route_runtime world_pos[0] double 0.0001 run scoreboard players get #rc_px kbt.settings
execute store result score #rc_py kbt.settings run data get storage kbt:route_runtime element.pos[1] 10000
execute store result score #rc_ay kbt.settings run data get storage kbt:routes draft.anchor.pos[1] 10000
scoreboard players operation #rc_py kbt.settings += #rc_ay kbt.settings
execute store result storage kbt:route_runtime world_pos[1] double 0.0001 run scoreboard players get #rc_py kbt.settings
execute store result score #rc_pz kbt.settings run data get storage kbt:route_runtime element.pos[2] 10000
execute store result score #rc_az kbt.settings run data get storage kbt:routes draft.anchor.pos[2] 10000
scoreboard players operation #rc_pz kbt.settings += #rc_az kbt.settings
execute store result storage kbt:route_runtime world_pos[2] double 0.0001 run scoreboard players get #rc_pz kbt.settings
execute if data storage kbt:route_runtime element{type:21} run function kbt:routes/creator/gold/position
