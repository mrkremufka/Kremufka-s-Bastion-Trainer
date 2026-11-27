scoreboard players operation #spawn_pick kbt.settings = #stables_spawn kbt.settings
data remove storage kbt:custom_spawns active
scoreboard players set #cs_type kbt.settings 3
execute if score #spawn_pick kbt.settings matches 8 run function kbt:practice/spawn/custom/start
execute if score #spawn_pick kbt.settings matches 0 run function kbt:practice/spawn/random_stables
execute if score #spawn_pick kbt.settings matches 1 run tp @a[tag=kbt.start_player] 1008.5 154 1023.5
execute if score #spawn_pick kbt.settings matches 2 run tp @a[tag=kbt.start_player] 1000.5 133 1029.5
execute if score #spawn_pick kbt.settings matches 3 run tp @a[tag=kbt.start_player] 996.5 141 1017.5
execute if score #spawn_pick kbt.settings matches 4 run tp @a[tag=kbt.start_player] 997.5 151 1028.5
execute if score #spawn_pick kbt.settings matches 5 run tp @a[tag=kbt.start_player] 997.5 161 1032.5
execute if score #spawn_pick kbt.settings matches 6 run tp @a[tag=kbt.start_player] 999.5 161 1016.5
execute if score #spawn_pick kbt.settings matches 7 run tp @a[tag=kbt.start_player] 997.5 161 1000.5

execute if score #spawn_pick kbt.settings matches 5..7 as @a[tag=kbt.start_player] at @s unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air run tp @s ~ ~1 ~

execute if score #run_floor kbt.settings matches 2 as @a[tag=kbt.start_player] at @s run function kbt:arena/buried/spawn_safe
