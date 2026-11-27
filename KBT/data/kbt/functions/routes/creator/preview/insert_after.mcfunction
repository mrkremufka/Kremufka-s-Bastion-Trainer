execute store result score #rc_preview_old kbt.settings run data get storage kbt:route_runtime element.stage
execute in minecraft:the_nether as @e[type=minecraft:armor_stand,tag=kbt.rc_preview] if score @s kbt.rc_stage >= #rc_insert_at kbt.settings run scoreboard players add @s kbt.rc_stage 1
execute in minecraft:the_nether as @e[type=minecraft:armor_stand,tag=kbt.rc_preview,scores={kbt.rc_type=5}] if score @s kbt.rc_stage = #rc_preview_old kbt.settings run scoreboard players add @s kbt.rc_stage 1
data modify storage kbt:route_runtime preview_shift set value {queue:[],result:[]}
execute if data storage kbt:route_runtime preview_queue run data modify storage kbt:route_runtime preview_shift.queue set from storage kbt:route_runtime preview_queue
execute if data storage kbt:route_runtime preview_shift.queue[0] run function kbt:routes/creator/preview/insert_scan
data modify storage kbt:route_runtime preview_queue set from storage kbt:route_runtime preview_shift.result
data modify storage kbt:route_runtime preview_queue prepend from storage kbt:route_runtime element
data remove storage kbt:route_runtime preview_shift
