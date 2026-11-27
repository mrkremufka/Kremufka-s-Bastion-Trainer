execute if score #rp_job kbt.settings matches 1.. run tellraw @s {"text":"Wait for the layout copy to finish","color":"yellow"}
execute if score @s kbt.creator matches 1 run tellraw @s {"text":"Exit the editor before starting a Movement playlist","color":"yellow"}
execute if score @s kbt.edit matches 1..3 run tellraw @s {"text":"Save your loadout first","color":"yellow"}
execute unless score #mv_choice kbt.settings matches 0..3 run tellraw @s {"text":"Select a bastion in the Movement lobby first","color":"yellow"}
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run tellraw @s {"text":"Start Movement Practice from the Nether lobby","color":"yellow"}
execute unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 unless score @s kbt.creator matches 1 unless score @s kbt.edit matches 1..3 if score #mv_choice kbt.settings matches 0..3 if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run function kbt:movement/playlist/prepare
