execute unless score #sh_booth kbt.settings matches 1.. unless score #sh_work kbt.settings matches 1 if score #ki_busy kbt.settings matches 1 run tellraw @a {"text":"Imports are loading Please wait a moment","color":"yellow"}
execute unless score #sh_booth kbt.settings matches 1.. unless score #sh_work kbt.settings matches 1 unless score #ki_busy kbt.settings matches 1 run function kbt:routes/setup/prepare_ready
execute if score #sh_booth kbt.settings matches 1.. run tellraw @a[tag=kbt.share_user] {"text":"Finish or cancel route sharing first","color":"yellow"}
execute if score #sh_work kbt.settings matches 1 run tellraw @a {"text":"Wait for the route import to finish","color":"yellow"}
