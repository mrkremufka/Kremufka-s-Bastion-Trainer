scoreboard players set #mv_creator_ready kbt.settings 0
execute if entity @s[type=minecraft:player,nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] unless score @s kbt.creator matches 1 unless score @s kbt.edit matches 1..3 unless score #rc_generating kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. unless score #rp_active kbt.settings matches 1 run scoreboard players set #mv_creator_ready kbt.settings 1
execute if score #mv_creator_ready kbt.settings matches 1 run function kbt:movement/creator/button/start
execute unless score #mv_creator_ready kbt.settings matches 1 run tellraw @s {"text":"Finish the active run, layout copy or editing before opening Movement Creator","color":"yellow"}
