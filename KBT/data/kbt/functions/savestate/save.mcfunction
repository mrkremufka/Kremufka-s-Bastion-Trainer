scoreboard players set #ss_count kbt.settings 0
execute as @e[type=!minecraft:player,x=936,y=128,z=936,dx=127,dy=127,dz=127] run scoreboard players add #ss_count kbt.settings 1
execute if score #ss_count kbt.settings matches 257.. run tellraw @s {"text":"Savestate: too many entities (maximum 256) Clear loose drops and try again Previous save kept","color":"red"}
execute if score #ss_count kbt.settings matches ..256 run function kbt:savestate/save_ready
