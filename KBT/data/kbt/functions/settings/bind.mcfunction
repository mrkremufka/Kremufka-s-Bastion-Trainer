execute positioned 23.5 129 33.5 if block ~ ~ ~ minecraft:chest[type=single] run function kbt:settings/bind_here
execute positioned 23 129 33 unless block ~ ~ ~ minecraft:chest[type=single] run tellraw @s {"text":"No single chest at 23 129 33 in this dimension","color":"red"}
