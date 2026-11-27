scoreboard players operation #mv_pb_view kbt.settings = #mv_choice kbt.settings
scoreboard players set #mv_pb_ticks kbt.settings -1
execute if score #mv_choice kbt.settings matches 0 if score b0 kbt.mv_pb matches 1.. run scoreboard players operation #mv_pb_ticks kbt.settings = b0 kbt.mv_pb
execute if score #mv_choice kbt.settings matches 1 if score b1 kbt.mv_pb matches 1.. run scoreboard players operation #mv_pb_ticks kbt.settings = b1 kbt.mv_pb
execute if score #mv_choice kbt.settings matches 2 if score b2 kbt.mv_pb matches 1.. run scoreboard players operation #mv_pb_ticks kbt.settings = b2 kbt.mv_pb
execute if score #mv_choice kbt.settings matches 3 if score b3 kbt.mv_pb matches 1.. run scoreboard players operation #mv_pb_ticks kbt.settings = b3 kbt.mv_pb
execute as @e[type=minecraft:armor_stand,tag=kbt.mv_pb_text] run data modify entity @s CustomName set value '{"text":"PB: --:--.---","color":"gray"}'
execute if score #mv_pb_ticks kbt.settings matches 1.. run function kbt:movement/playlist/pb/render_time
