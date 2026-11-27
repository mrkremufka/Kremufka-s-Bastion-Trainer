scoreboard players set #cs_position_ok kbt.settings 1
execute store result score #cs_x kbt.settings run data get entity @s Pos[0] 1
execute store result score #cs_y kbt.settings run data get entity @s Pos[1] 1
execute store result score #cs_z kbt.settings run data get entity @s Pos[2] 1
execute unless score #cs_x kbt.settings matches 936..1063 run scoreboard players set #cs_position_ok kbt.settings 0
execute unless score #cs_y kbt.settings matches 129..255 run scoreboard players set #cs_position_ok kbt.settings 0
execute unless score #cs_z kbt.settings matches 936..1063 run scoreboard players set #cs_position_ok kbt.settings 0
execute if score #cs_position_ok kbt.settings matches 1 run function kbt:practice/spawn/custom/create/name_begin
execute if score #cs_position_ok kbt.settings matches 0 run tellraw @s {"text":"Choose a position inside the bastion arena, between Y=129 and Y=255","color":"yellow"}
