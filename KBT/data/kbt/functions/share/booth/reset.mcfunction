function kbt:share/ready
execute if score #sh_ready kbt.settings matches 1 run scoreboard players set #sh_owned kbt.settings 1
execute if score #sh_ready kbt.settings matches 1 in minecraft:the_nether run function kbt:share/booth/clear
execute if score #sh_ready kbt.settings matches 1 run tellraw @s {"text":"Resetting the temporary sharing booth Try Import / Export again in a moment Saved routes and files are unchanged","color":"green"}
