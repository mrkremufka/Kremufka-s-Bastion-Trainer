execute unless entity @a[tag=kbt.rp_runner,nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run function kbt:routes/practice/stop
execute if score #rp_active kbt.settings matches 1 as @a[tag=kbt.rp_runner,gamemode=!survival,nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run function kbt:routes/practice/gamemode_unrank
execute if entity @a[tag=kbt.rp_runner,scores={kbt.deaths=1..}] run function kbt:routes/practice/stop
execute if entity @a[tag=kbt.rp_runner,scores={kbt.leaves=1..}] run function kbt:routes/practice/stop
execute if score #rp_active kbt.settings matches 1 run function kbt:routes/timer/tick
execute if score #rp_active kbt.settings matches 1 as @a[tag=kbt.rp_runner,scores={kbt.run=1}] at @s run function kbt:practice/movement/check
execute if score #rp_active kbt.settings matches 1 run function kbt:routes/practice/progress/active
