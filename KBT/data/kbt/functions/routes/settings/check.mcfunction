execute unless block ~ ~ ~ minecraft:chest[type=single] run kill @s
execute if entity @s if block ~ ~ ~ minecraft:chest[type=single] run function kbt:routes/settings/poll
