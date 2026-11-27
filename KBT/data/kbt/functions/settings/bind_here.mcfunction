execute unless entity @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["kbt.settings_chest"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
data merge block ~ ~ ~ {CustomName:'{"text":"Bastion Settings","italic":false}'}
execute as @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=..0.1,limit=1] run function kbt:settings/render
tellraw @s {"text":"Settings menu linked to the chest at 23 129 33","color":"gold"}
