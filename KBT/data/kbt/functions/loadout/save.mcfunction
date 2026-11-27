execute unless score @s kbt.edit matches 1..3 run tellraw @s {"text":"Choose Edit on a loadout slot first","color":"red"}
execute if score @s kbt.edit matches 1 run function kbt:loadout/save/1
execute if score @s kbt.edit matches 2 run function kbt:loadout/save/2
execute if score @s kbt.edit matches 3 run function kbt:loadout/save/3
