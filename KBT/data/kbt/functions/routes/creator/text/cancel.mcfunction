execute if score @s kbt.creator matches 1 run function kbt:routes/creator/text/clear
execute if score @s kbt.creator matches 1 run tellraw @s {"text":"Pending text cancelled Saved route elements are unchanged","color":"gray"}
