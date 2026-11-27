execute unless score #sh_booth kbt.settings matches 1.. unless score #sh_work kbt.settings matches 1 unless score #cs_job kbt.settings matches 1..2 run function kbt:start_ready
execute unless score #sh_booth kbt.settings matches 1.. unless score #sh_work kbt.settings matches 1 if score #cs_job kbt.settings matches 1..2 run tellraw @a[tag=kbt.cs_creator] {"text":"Save or cancel the custom spawnpoint before starting practice","color":"yellow"}
execute if score #sh_booth kbt.settings matches 1.. run tellraw @a[tag=kbt.share_user] {"text":"Finish or cancel route sharing first","color":"yellow"}
execute if score #sh_work kbt.settings matches 1 run tellraw @a {"text":"Wait for the route import to finish","color":"yellow"}
