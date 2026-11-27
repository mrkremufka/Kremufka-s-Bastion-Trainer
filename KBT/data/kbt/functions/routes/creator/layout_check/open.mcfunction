execute if score #rp_job kbt.settings matches 1.. run tellraw @s {"text":"Wait for layout copying to finish before checking the layout","color":"yellow"}
execute if score #rc_generating kbt.settings matches 1 run tellraw @s {"text":"Wait for bastion generation to finish","color":"yellow"}
execute if score @s kbt.creator matches 1 unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] in minecraft:the_nether run function kbt:routes/creator/layout_check/start
