scoreboard players set #placed kbt.menu 0
execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ minecraft:air unless block ~1 ~ ~ minecraft:chest unless block ~-1 ~ ~ minecraft:chest unless block ~ ~ ~1 minecraft:chest unless block ~ ~ ~-1 minecraft:chest unless entity @e[tag=kbt.settings_chest,distance=..1] run function kbt:settings/create
execute if score #placed kbt.menu matches 0 run tellraw @s {"text":"Choose an empty block away from other chests","color":"red"}
