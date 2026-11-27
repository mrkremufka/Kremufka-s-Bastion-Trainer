scoreboard players operation #spawn_pick kbt.settings = #treasure_spawn kbt.settings
data remove storage kbt:custom_spawns active
scoreboard players set #cs_type kbt.settings 1
execute if score #spawn_pick kbt.settings matches 7 run function kbt:practice/spawn/custom/start
execute if score #spawn_pick kbt.settings matches 0 run function kbt:practice/spawn/random_treasure
execute if score #spawn_pick kbt.settings matches 1 run tp @a[tag=kbt.start_player] 1003.5 159 998.5
execute if score #spawn_pick kbt.settings matches 2 run tp @a[tag=kbt.start_player] 1016.5 175 999.5
execute if score #spawn_pick kbt.settings matches 3 run tp @a[tag=kbt.start_player] 1019.5 168 1003.5
execute if score #spawn_pick kbt.settings matches 4 run tp @a[tag=kbt.start_player] 1006.5 194 977.5
execute if score #spawn_pick kbt.settings matches 5 run tp @a[tag=kbt.start_player] 1018.5 195 979.5
execute if score #spawn_pick kbt.settings matches 6 run tp @a[tag=kbt.start_player] 1030.5 136 1019.5

execute if score #run_floor kbt.settings matches 2 as @a[tag=kbt.start_player] at @s run function kbt:arena/buried/spawn_safe
