execute store result score @s kbt.blaze run data get block ~ ~ ~ sizeX
execute store result score @s kbt.spawn run data get block ~ ~ ~ sizeZ
setblock ~ ~-1 ~ minecraft:air
execute if score @s kbt.blaze matches 1..48 if score @s kbt.spawn matches 1..48 run setblock ~ ~-1 ~ minecraft:redstone_block
execute unless score @s kbt.blaze matches 1..48 run tellraw @a {"text":"Cannot load data/kbt/structures/fortpie.nbt Add the template and reload","color":"red"}
