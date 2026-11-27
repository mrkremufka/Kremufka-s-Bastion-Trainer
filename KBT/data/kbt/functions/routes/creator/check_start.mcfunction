execute if score @s kbt.edit matches 1..3 run tellraw @s {"text":"Save your loadout before entering Route Creator","color":"red"}
execute unless score @s kbt.edit matches 1..3 if score @s kbt.creator matches 1 run function kbt:routes/creator/menu
execute unless score @s kbt.edit matches 1..3 unless score @s kbt.creator matches 1 unless data storage kbt:routes draft run function kbt:routes/creator/new_draft
execute unless score @s kbt.edit matches 1..3 unless score @s kbt.creator matches 1 if data storage kbt:routes draft run function kbt:routes/creator/enter
