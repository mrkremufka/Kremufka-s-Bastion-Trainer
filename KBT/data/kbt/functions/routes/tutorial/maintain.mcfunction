execute unless entity @e[type=minecraft:armor_stand,tag=kbt.route_tutorial,tag=kbt.route_tutorial_v6,distance=..0.1] run function kbt:routes/tutorial/create
execute if entity @e[type=minecraft:armor_stand,tag=kbt.route_tutorial,distance=..0.1] unless entity @e[type=minecraft:pufferfish,tag=kbt.route_tutorial_hitbox,distance=..1] run function kbt:routes/tutorial/create
