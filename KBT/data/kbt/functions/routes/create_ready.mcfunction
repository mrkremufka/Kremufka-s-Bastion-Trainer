execute if entity @s[type=minecraft:player,nbt=!{Health:0.0f}] run clear @s
execute unless entity @s[type=minecraft:player] run tellraw @a {"text":"Run /function kbt:routes/create as a player","color":"red"}
execute if entity @s[type=minecraft:player,nbt=!{Health:0.0f}] run function kbt:routes/setup/open
