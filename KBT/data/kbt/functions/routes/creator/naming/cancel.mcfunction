execute if score @s kbt.creator matches 1 run function kbt:routes/creator/naming/clear
execute if score @s kbt.creator matches 1 run tellraw @s {"text":"Naming cancelled Route name unchanged","color":"gray"}
