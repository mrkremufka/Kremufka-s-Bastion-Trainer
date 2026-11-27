execute if score #rp_job kbt.settings matches 1.. run tellraw @s {"text":"Layout copy is in progress; please wait","color":"yellow"}
execute unless score #rp_job kbt.settings matches 1.. if score @s kbt.edit matches 1..3 run tellraw @s {"text":"Save your loadout first","color":"red"}
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"}] run tellraw @s {"text":"Start Route Practice from the Nether","color":"red"}
execute if score #rc_generating kbt.settings matches 1 run tellraw @s {"text":"Wait for Create Route to finish","color":"yellow"}
execute unless score #rc_generating kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. unless score @s kbt.edit matches 1..3 if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] at @s run function kbt:routes/practice/lookup
