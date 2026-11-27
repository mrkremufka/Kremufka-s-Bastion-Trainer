execute if score #ki_busy kbt.settings matches 1 run tellraw @a {"text":"Imports are loading Please wait a moment","color":"yellow"}
execute unless score #ki_busy kbt.settings matches 1 run function kbt:routes/creator/start_ready
