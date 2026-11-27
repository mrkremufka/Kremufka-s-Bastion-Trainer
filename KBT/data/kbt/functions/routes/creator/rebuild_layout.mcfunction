execute unless score @s kbt.creator matches 1 run tellraw @s {"text":"Open the Custom route in Route Creator before rebuilding its layout","color":"red"}
execute if score #rp_job kbt.settings matches 1.. run tellraw @s {"text":"Wait for the current layout copy to finish","color":"yellow"}
execute if score @s kbt.creator matches 1 unless score #rp_job kbt.settings matches 1.. if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run function kbt:routes/creator/rebuild_layout_check
