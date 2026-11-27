scoreboard players set #mv_new_pb kbt.settings 0
execute store result score #mv_pb_type kbt.settings run data get storage kbt:movement_playlist session.bastion
execute if score #mv_pb_type kbt.settings matches 0 unless score b0 kbt.mv_pb matches 1.. run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 0 if score #mv_total kbt.settings < b0 kbt.mv_pb run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 1 unless score b1 kbt.mv_pb matches 1.. run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 1 if score #mv_total kbt.settings < b1 kbt.mv_pb run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 2 unless score b2 kbt.mv_pb matches 1.. run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 2 if score #mv_total kbt.settings < b2 kbt.mv_pb run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 3 unless score b3 kbt.mv_pb matches 1.. run scoreboard players set #mv_new_pb kbt.settings 1
execute if score #mv_pb_type kbt.settings matches 3 if score #mv_total kbt.settings < b3 kbt.mv_pb run scoreboard players set #mv_new_pb kbt.settings 1
execute store result score #mv_pb_type kbt.settings run data get storage kbt:movement_playlist session.bastion
execute if score #mv_pb_type kbt.settings matches 0 unless score b0 kbt.mv_pb matches 1.. run scoreboard players operation b0 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 0 if score #mv_total kbt.settings < b0 kbt.mv_pb run scoreboard players operation b0 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 1 unless score b1 kbt.mv_pb matches 1.. run scoreboard players operation b1 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 1 if score #mv_total kbt.settings < b1 kbt.mv_pb run scoreboard players operation b1 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 2 unless score b2 kbt.mv_pb matches 1.. run scoreboard players operation b2 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 2 if score #mv_total kbt.settings < b2 kbt.mv_pb run scoreboard players operation b2 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 3 unless score b3 kbt.mv_pb matches 1.. run scoreboard players operation b3 kbt.mv_pb = #mv_total kbt.settings
execute if score #mv_pb_type kbt.settings matches 3 if score #mv_total kbt.settings < b3 kbt.mv_pb run scoreboard players operation b3 kbt.mv_pb = #mv_total kbt.settings
scoreboard players set #mv_pb_view kbt.settings -1
