scoreboard players set #mv_valid kbt.settings 0
execute if score @s kbt.creator matches 1 if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 unless score #ki_busy kbt.settings matches 1 unless data storage kbt:route_text pending if data storage kbt:route_move session run function kbt:routes/creator/move/check
execute if score #mv_valid kbt.settings matches 1 if score @s kbt.rc_move matches 1..6 run function kbt:routes/creator/move/apply
execute if score #mv_valid kbt.settings matches 1 if score @s kbt.rc_move matches 10..13 run function kbt:routes/creator/move/step
execute if score #mv_valid kbt.settings matches 1 if score @s kbt.rc_move matches 21 run function kbt:routes/creator/move/here
execute if score @s kbt.rc_move matches 20 run data remove storage kbt:route_move session
execute if score #mv_valid kbt.settings matches 0 unless score @s kbt.rc_move matches 20 run tellraw @s {"text":"Selection changed or editing is busy Select the object with Move again","color":"yellow"}
scoreboard players set @s kbt.rc_move 0
scoreboard players enable @s kbt.rc_move
