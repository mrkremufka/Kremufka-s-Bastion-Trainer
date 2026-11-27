scoreboard players set @s kbt.rc_cd 6
scoreboard players set #re_allowed kbt.settings 0
execute if score @s kbt.creator matches 1 if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] unless data storage kbt:route_text pending unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 unless score #ki_busy kbt.settings matches 1 run scoreboard players set #re_allowed kbt.settings 1
execute if score #re_allowed kbt.settings matches 1 run function kbt:routes/creator/edit/aim_valid
execute unless score #re_allowed kbt.settings matches 1 run tellraw @s {"text":"Finish pending edits or loading before selecting an object in the editor","color":"yellow"}
