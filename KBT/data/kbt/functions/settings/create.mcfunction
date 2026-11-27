setblock ~ ~ ~ minecraft:chest[facing=north,type=single]{CustomName:'{"text":"Bastion Settings","italic":false}'}
summon minecraft:armor_stand ~ ~ ~ {Tags:["kbt.settings_chest"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
execute as @e[type=minecraft:armor_stand,tag=kbt.settings_chest,distance=..0.1,limit=1] run function kbt:settings/render
scoreboard players set #placed kbt.menu 1
tellraw @s {"text":"Settings chest created Pick up Bastion Type to change the selection","color":"gold"}
