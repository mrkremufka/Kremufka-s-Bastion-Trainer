scoreboard players operation #spawn_pick kbt.settings = #bridge_spawn kbt.settings
data remove storage kbt:custom_spawns active
scoreboard players set #cs_type kbt.settings 0
execute if score #spawn_pick kbt.settings matches 10 run function kbt:practice/spawn/custom/start
execute if score #spawn_pick kbt.settings matches 0 run function kbt:practice/spawn/random_bridge
execute if score #spawn_pick kbt.settings matches 1 run tp @a[tag=kbt.start_player] 974.5 165 1010.5
execute if score #spawn_pick kbt.settings matches 2 run tp @a[tag=kbt.start_player] 1019.5 165 1019.5
execute if score #spawn_pick kbt.settings matches 3 run tp @a[tag=kbt.start_player] 1011.5 178 1005.5
execute if score #spawn_pick kbt.settings matches 4 run tp @a[tag=kbt.start_player] 1016.5 173 1003.5
execute if score #spawn_pick kbt.settings matches 5 run tp @a[tag=kbt.start_player] 1016.5 175 1026.5
execute if score #spawn_pick kbt.settings matches 6 run tp @a[tag=kbt.start_player] 978.5 156 1015.5
execute if score #spawn_pick kbt.settings matches 7 run tp @a[tag=kbt.start_player] 1022.5 156 1016.5
execute if score #spawn_pick kbt.settings matches 8 run tp @a[tag=kbt.start_player] 1015.5 182 1001.5
execute if score #spawn_pick kbt.settings matches 9 run tp @a[tag=kbt.start_player] 1014.5 182 1029.5

execute if score #run_floor kbt.settings matches 2 as @a[tag=kbt.start_player] at @s run function kbt:arena/buried/spawn_safe
